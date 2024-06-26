class LifesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_life, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_torisetsu, only: [:new, :create]

  def new
    if current_user.torisetsu.life.present?
      redirect_to torisetsu_life_path(current_user.torisetsu, current_user.torisetsu.life.id)
    end
    @life = Life.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @life = torisetsu.build_life(life_params)
    if @life.save
      redirect_to torisetsu_life_path(torisetsu, @life), notice: 'プロフィールが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @life.update(life_params)
      redirect_to torisetsu_life_path(@torisetsu, @life), notice: 'プロフィールが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @life.destroy
    redirect_to torisetsus_path, notice: 'プロフィールが削除されました。'
  end

  private

  def set_life
    @life = Life.find(params[:id])
    @torisetsu = @life.torisetsu
  end

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end

  def life_params
    params.require(:life).permit(:life_morning, :life_breakfast, :life_breakfast_weight, :life_cry, :life_crytime, :life_anger, :life_battle, :life_sleep)
  end

  def correct_user
    @life = current_user.torisetsu.life
    redirect_to root_path, alert: "アクセス権がありません" if @life.nil?
  end
end

class IntroductionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_introduction, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
    if current_user.torisetsu.introduction.present?
      redirect_to introduction_path(current_user.torisetsu.introduction.id)
    end
    @introduction = Introduction.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @introduction = torisetsu.build_introduction(introduction_params)
    if @introduction.save
      redirect_to torisetsus_path, notice: 'プロフィールが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @introduction.update(introduction_params)
      redirect_to @introduction, notice: 'プロフィールが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @introduction.destroy
    redirect_to torisetsus_path(current_user.torisetsu), notice: 'プロフィールが削除されました。'
  end

  private

  def set_introduction
    @introduction = Introduction.find(params[:id])
  end

  def introduction_params
    params.require(:introduction).permit(:birth_day, :blood_type, :body_height, :body_weight, :favorite_food, :dislike_food, :favorite_color, :favorite_place)
  end

  def correct_user
    @introduction = current_user.torisetsu.introduction
    redirect_to root_path, alert: "アクセス権がありません" if @introduction.nil?
  end
end

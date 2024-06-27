class WorksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_work, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_torisetsu, only: [:new, :create]

  def new
    if current_user.torisetsu.work.present?
      redirect_to torisetsu_work_path(current_user.torisetsu, current_user.torisetsu.work.id)
    end
    @work = Work.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @work = torisetsu.build_work(work_params)
    if @work.save
      redirect_to torisetsu_work_path(torisetsu, @work), notice: 'プロフィールが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to torisetsu_work_path(@torisetsu, @work), notice: 'プロフィールが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @work.destroy
    redirect_to torisetsus_path, notice: 'プロフィールが削除されました。'
  end

  private

  def set_work
    @work = Work.find(params[:id])
    @torisetsu = @work.torisetsu
  end

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end

  def work_params
    params.require(:work).permit(:work_like, :work_concentration, :work_incandescent, :work_fine_work, :work_heavy_lifting, :work_communication, :work_overtime, :work_party, :work_party_owner)
  end

  def correct_user
    @work = current_user.torisetsu.work
    redirect_to root_path, alert: "アクセス権がありません" if @work.nil?
  end
  
end

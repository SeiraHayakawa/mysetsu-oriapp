class SchoolsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_torisetsu, only: [:new, :create]

  def new
    if current_user.torisetsu.school.present?
      redirect_to torisetsu_school_path(current_user.torisetsu, current_user.torisetsu.school.id)
    end
    @school = School.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @school = torisetsu.build_school(school_params)
    if @school.save
      redirect_to torisetsu_school_path(torisetsu, @school), notice: '学校プロフィールが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @school.update(school_params)
      redirect_to torisetsu_school_path(@torisetsu, @school), notice: '学校プロフィールが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @school.destroy
    redirect_to torisetsus_path, notice: '学校プロフィールが削除されました。'
  end

  private

  def set_school
    @school = School.find(params[:id])
    @torisetsu = @school.torisetsu
  end

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end

  def school_params
    params.require(:school).permit(:favorite_subject, :favorite_subject_reason, :least_favorite_subject, :least_favorite_subject_reason, :teacher_pet, :talking_with_friends, :group_activities, :lunch_preference, :disliked_school_activities, :best_friend, :favorite_school_event, :favorite_place_at_school)
  end

  def correct_user
    @school = current_user.torisetsu.school
    redirect_to root_path, alert: "アクセス権がありません" if @school.nil?
  end
end

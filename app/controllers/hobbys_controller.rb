class HobbysController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_torisetsu, only: [:new, :create]

  def new
    if current_user.torisetsu.hobby.present?
      redirect_to torisetsu_hobby_path(current_user.torisetsu, current_user.torisetsu.hobby.id)
    end
    @hobby = Hobby.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @hobby = torisetsu.build_hobby(hobby_params)
    if @hobby.save
      redirect_to torisetsu_hobby_path(torisetsu, @hobby), notice: '趣味が作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to torisetsu_hobby_path(@torisetsu, @hobby), notice: '趣味が更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hobby.destroy
    redirect_to torisetsus_path, notice: '趣味が削除されました。'
  end

  private

  def set_hobby
    @hobby = Hobby.find(params[:id])
    @torisetsu = @hobby.torisetsu
  end

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end

  def hobby_params
    params.require(:hobby).permit(:hobby_name, :frequency, :no_time_effect, :satisfaction_moment, :immersion_effect, :start_time, :fatigue_effect, :inability_effect)
  end

  def correct_user
    @hobby = current_user.torisetsu.hobby
    redirect_to root_path, alert: "アクセス権がありません" if @hobby.nil?
  end
end

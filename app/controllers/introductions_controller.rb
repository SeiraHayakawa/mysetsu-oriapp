class IntroductionsController < ApplicationController
  before_action :set_introduction, only: [:show, :edit, :update]


  def new
    @introduction = Introduction.new
  end

  def create
    @introduction = Introduction.new(introduction_params)
    if current_user.torisetsu.present?
      @introduction.torisetsu = current_user.torisetsu
      if @introduction.save
        redirect_to torisetsu_path(current_user.torisetsu)
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @introduction.update(introduction_params)
      redirect_to torisetsus_path(current_user.torisetsu)
    else
      render :edit
    end
  end


  private

  def set_introduction
    @introduction = Introduction.find(params[:id])
  end

  def introduction_params
    params.require(:introduction).permit(:birth_day, :blood_type, :body_height, :body_weight, :favorite_food, :dislike_food, :favorite_color, :favorite_place)
  end

end
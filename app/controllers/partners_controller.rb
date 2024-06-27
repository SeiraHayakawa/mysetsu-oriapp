class PartnersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_partner, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_torisetsu, only: [:new, :create]

  def new
    if current_user.torisetsu.partner.present?
      redirect_to torisetsu_partner_path(current_user.torisetsu, current_user.torisetsu.partner.id)
    end
    @partner = Partner.new
  end

  def create
    torisetsu = current_user.torisetsu || current_user.create_torisetsu
    @partner = torisetsu.build_partner(partner_params)
    if @partner.save
      redirect_to torisetsu_partner_path(torisetsu, @partner), notice: 'プロフィールが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @partner.update(partner_params)
      redirect_to torisetsu_partner_path(@torisetsu, @partner), notice: 'プロフィールが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @partner.destroy
    redirect_to torisetsus_path, notice: 'プロフィールが削除されました。'
  end

  private

  def set_partner
    @partner = Partner.find(params[:id])
    @torisetsu = @partner.torisetsu
  end

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end

  def partner_params
    params.require(:partner).permit(:favorite_aspect, :calm_activity, :initial_attraction, :comforting_action, :disagreement_trigger, :appearance_concern, :favorite_date, :ideal_relationship, :affection_expression)
  end

  def correct_user
    @partner = current_user.torisetsu.partner
    redirect_to root_path, alert: "アクセス権がありません" if @partner.nil?
  end
end

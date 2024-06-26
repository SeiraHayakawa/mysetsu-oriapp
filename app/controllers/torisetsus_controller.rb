class TorisetsusController < ApplicationController
  before_action :authenticate_user!
  before_action :set_torisetsu, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @torisetsu = Torisetsu.find(params[:id])
    @user = @torisetsu.user
    @introduction = @torisetsu.introduction
    @life = @torisetsu.life
    # 他の関連情報もここで取得できます
  end

  private

  def set_torisetsu
    @torisetsu = current_user.torisetsu
  end
end

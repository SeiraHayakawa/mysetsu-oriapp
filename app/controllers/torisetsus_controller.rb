class TorisetsusController < ApplicationController
  before_action :authenticate_user!
  before_action :set_or_create_torisetsu, only: [:index, :show]

  def index
  end


  def show
    @torisetsu = Torisetsu.find(params[:id])
    @user = @torisetsu.user
    @introduction = @torisetsu.introduction
    @life = @torisetsu.life
    @work = @torisetsu.work
    @school = @torisetsu.school
    @partner = @torisetsu.partner
    # 他の関連情報もここで取得できます
  end

  private

  def set_or_create_torisetsu
    @torisetsu = current_user.torisetsu || current_user.create_torisetsu
  end
end

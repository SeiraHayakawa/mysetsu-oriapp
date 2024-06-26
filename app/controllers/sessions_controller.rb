class SessionsController < Devise::SessionsController
  def create
    super do |resource|
      # ログイン成功後にTorisetsuを作成
      resource.create_torisetsu unless resource.torisetsu.present?
    end
  end
end
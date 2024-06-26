class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '2222'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :nickname ,
      :family_name ,
      :first_name ,
      :family_name_kana ,
      :first_name_kana 
    ])
  end

  protected

  def after_sign_in_path_for(resource)
    torisetsus_path # ログイン後のリダイレクト先を指定します
  end


end


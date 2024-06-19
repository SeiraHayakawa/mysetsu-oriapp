class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :nickname ,
      :family_name ,
      :first_name ,
      :family_name_kana ,
      :first_name_kana 
    ])
  end

  def after_sign_in_path_for(resource)
    torisetsus_path #遷移させたいページのpathを記述
  end
end

class UsersController < ApplicationController
  def index
    if user_signed_in?
      redirect_to torisetsus_path
    else
      render :index
    end
  end
end


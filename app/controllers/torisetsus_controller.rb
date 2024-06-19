class TorisetsusController < ApplicationController
  def index
  end

  def show
    @introduction = Introduction.find(params[:introduction_id])

  end
  
end

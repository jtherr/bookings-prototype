class HotelsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @hotel = Hotel.find(params[:id])
  end

end
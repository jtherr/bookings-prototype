class BookingsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

end
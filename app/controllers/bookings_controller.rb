class BookingsController < ApplicationController

  def new
    @bookings = Bookings.new
    @service = Service.find(params[:service_id])
  end

end

class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

 def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service

    if @booking.save
      redirect_to service_path(@service)
    else
      render :new
    end
end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to service_path(@booking.list)
  end

end

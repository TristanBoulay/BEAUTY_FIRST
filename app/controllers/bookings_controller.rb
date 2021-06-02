class BookingsController < ApplicationController
skip_before_action :authenticate_user!, only: :new
  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

 def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user

    if @booking.save
      redirect_to service_path(@service), alert: "Booking Confirmed!"

    else
      render :new
    end
end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to service_path(@booking.list)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date,:end_date)

  end

end

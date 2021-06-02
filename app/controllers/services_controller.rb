class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @services = Service.all
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        info_window: render_to_string(partial: "info_window", locals: { service: service }),
        # image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show
    @service = Service.find(params[:id])
  end


  private

  def services_params
    params.require(:service).permit(:name, :title, :address, :price, :photo)
  end

end

class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  private

  def services_params
    params.require(:service).permit(:name, :title, :address, :price, :photo)
  end
end

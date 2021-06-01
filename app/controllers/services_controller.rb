class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end


  private

  def services_params
    params.require(:service).permit(:name, :title, :address, :price, :photo)
  end

end

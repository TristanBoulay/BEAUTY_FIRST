class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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

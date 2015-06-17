class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      redirect_to home_path
    else
      render :new
    end

  end


private
  def location_params
    params.require(:location).permit(:apt_name, :address, :city, :state, :zip, :user_id)
  end

end

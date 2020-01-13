class Api::V1::ForecastController < ApplicationController
  def show
    # render :locals {facade = Facade.new}
    # get_local = GoogleGeocodeService.new.get_location(location)
    # serialized_forecast = LocationSerializer.new(get_local)
    # render json: serialized_forecast
  end

end

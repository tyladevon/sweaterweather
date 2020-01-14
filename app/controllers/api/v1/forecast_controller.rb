class Api::V1::ForecastController < ApplicationController
  def show
    get_local = GoogleGeocodeService.new.get_location(params[:location])

    forecast_data = DarkskyService.new.get_forecast(ENV['darksky_api_key'], get_local.lat, get_local.long)

    forecast = Forecast.new(forecast_data, params[:location])

    render json: ForecastSerializer.new(forecast)


    # get_local = GoogleGeocodeService.new.get_location(location)
    # serialized_forecast = LocationSerializer.new(get_local)
    # render json: serialized_forecast
  end

end

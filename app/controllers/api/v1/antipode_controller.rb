class Api::V1::AntipodeController < ApplicationController
  def show
    results = GoogleGeocodeService.new.get_location(params[:location])
    anti_results = AmypodeService.new.find_antipode(results.lat,results.long)
    forecast_results = DarkskyService.new.get_forecast(ENV['darksky_api_key'],anti_results.lat, anti_results.long)
    weather = Weather.new(params[:location], results, forecast_results)

    render json: WeatherSerializer.new(weather)
  end
end

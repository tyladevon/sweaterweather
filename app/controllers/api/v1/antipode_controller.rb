class Api::V1::AntipodeController < ApplicationController
  def show
    weather = AntipodeForecastFacade.new(params[:location]).get_forecast
    serialized_weather = WeatherSerializer.new(weather)
  end
end

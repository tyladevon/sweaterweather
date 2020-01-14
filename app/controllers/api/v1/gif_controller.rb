class Api::V1::GifController < ApplicationController
  def show
    get_local = GoogleGeocodeService.new.get_location(params[:location])
    info_for_darksky = Location.new(get_local)
    forecast_data = DarkskyService.new.get_forecast(ENV['darksky_api_key'], info_for_darksky.lat, info_for_darksky.long)
    gif_forecast = GifService.new.get_gif(forecast_data[:currently][:summary])
    gif = Gif.new(gif_forecast[:data][0][:url],forecast_data).get_response

    render json: GifSerializer.new(gif, forecast_data[])
  end


end

class GifFacade
  attr_reader :id
  def initialize(location)
    @location = location
    @id = nil
  end

  def images
    get_local = GoogleGeocodeService.new.get_location(@location)
    info_for_darksky = Location.new(get_local)
    forecast_data = DarkskyService.new.get_forecast(ENV['darksky_api_key'], info_for_darksky.lat, info_for_darksky.long)

    gifs = forecast_data[:hourly][:data].map do |data|
      time = data[:time]
      summary = data[:summary]
      url = GifService.new.get_gif(forecast_data[:currently][:summary])[:data][0][:url]

      Gif.new(url,time, summary)
    end
  end
end

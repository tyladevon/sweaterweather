class ForecastFacade
  attr_reader :id

  def initialize(location)
    @id = nil
    @location = location
  end

  def forecast_results
    get_local = GoogleGeocodeService.new.get_location(@location)
    info_for_darksky = Location.new(get_local)
    forecast_data = DarkskyService.new.get_forecast(ENV['darksky_api_key'], info_for_darksky.lat, info_for_darksky.long)

    binding.pry
    current_weather = {
      summary => forecast_data[:currently][:summary],
      icon => forecast_data[:currently][:icon],
      temp => forecast_data[:currently][:temperature],
      high => forecast_data[:daily][:data][:temeratureHigh],
      low => forecast_data[:daily][:data][:temeratureLow],
      time => Time.at(day[:time]).strftime('%A')
    }

    summary = {
      today => forecast_data[:daily][:summary],
      feels_like => forecast_data[:currently][:apparentTemperature],
      humidity => forecast_data[:currently][:humidity],
      visibility => forecast_data[:currently][:visibility],
      uv_index => forecast_data[:currently][:uvIndex],
      tonight => forecast_data[:hourly][:data][6][:summary]
    }

    forecast = forecast_data[:hourly][:data].first(8).map do |forecast|
      forecast[:time]
      forecast[:temperature]
    end

    Forecast.new(@location, current_weather, summary, forecast)
  end

end

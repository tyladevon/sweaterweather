class AntipodeForecast
  def initialize(location)
    @location = location
  end

  def get_antipode_forecast
    results = GoogleGeocodeService.new.get_location(@location)
    anti_results = AmypodeService.new.find_antipode(results.lat,results.long)
    forecast_results = DarkskyService.new.get_forecast(ENV['darksky_api_key'],anti_results.lat, anti_results.long)
    data = "#{results}, #{forecast_results}"
    # data = "#{results.address} #{forecast_results.current_temp}  #{forecast_results.current_weather}  #{forecast_results.current_weather_icon}"
  end
end

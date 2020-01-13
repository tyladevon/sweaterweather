class AntipodeForecastFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def get_forecast
    results = AntipodeForecast.new(location)

    # results = GoogleGeocodeService.new.get_location(location)
    # anti_results = AmypodeService.new.find_antipode(results.lat,results.long)
    forecast_results = DarkskyService.new.get_forecast(ENV['darksky_api_key'],anti_results.lat, anti_results.long)
  end
end

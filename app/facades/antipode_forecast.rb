class AntipodeForecastFacade
  def initialize(location)
    binding.pry
    @location = params[:location]
    # @o_lat = o_lat
    # @o_long = o_long
    # @d_lat = d_lat
    # @d_long = d_long
  end

  def get_forecast
    results = GoogleGeocodeService.new.get_location(location)
    forecast_results = DarkskyService.new.get_forecast(key,lat, lng)
    antipode_results = AmypodeService.new.find_antipode(lat,long)
  end
end

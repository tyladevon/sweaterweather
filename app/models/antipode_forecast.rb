class AntipodeForecast
  def initialize(location)
    @location = location
  end

  def get_antipode_forecast
    results = GoogleGeocodeService.new.get_location(location)
    anti_results = AmypodeService.new.find_antipode(results.lat,results.long)
    
  end
end

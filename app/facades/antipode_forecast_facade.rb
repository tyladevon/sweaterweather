class AntipodeForecastFacade
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def get_forecast
    results = AntipodeForecast.new(@location).get_antipode_forecast
  end
end

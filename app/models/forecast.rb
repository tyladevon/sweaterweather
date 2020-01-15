class Forecast
  attr_reader :id


  def initialize(location, current_weather, summary, forecast)
    @id = nil
    @location = location
    @current_weather = current_weather
    @summary = summary
    @forecast = forecast
  end
end

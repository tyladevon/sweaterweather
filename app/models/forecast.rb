class Forecast
  attr_reader :id,
              :current_weather,
              :current_weather_icon,
              :current_temperature,
              :location

  def initialize(forecast_data, location)
    @id = nil
    @current_weather = forecast_data[:currently][:summary]
    @current_weather_icon = forecast_data[:currently][:icon]
    @current_temperature = forecast_data[:currently][:temperature]
    @location = location
  end
end

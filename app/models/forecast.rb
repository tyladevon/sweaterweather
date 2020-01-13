class Forecast
  attr_reader :current_weather,
              :current_weather_icon,
              :current_temp

  def initialize(data)
    @current_weather = data[:currently][:summary]
    @current_weather_icon = data[:currently][:icon]
    @current_temp = data[:currently][:temperature]
  end
end

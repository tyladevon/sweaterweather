class ForecastSerializer
  include FastJsonapi::ObjectSerializer

  attributes :current_weather,
             :current_weather_icon,
             :current_temperature,
             :location
end

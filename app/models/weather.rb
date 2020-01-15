class Weather
  attr_reader :id,
              :location_name,
              :search_location,
              :current_temperature,
              :summary

  def initialize(location, results, forecast_results)
    @id = nil
    @search_location = location
    @location_name = results.address
    @current_temperature = forecast_results.current_temp
    @summary = forecast_results.current_weather
  end
end

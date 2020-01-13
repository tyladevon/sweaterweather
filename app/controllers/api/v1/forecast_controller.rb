class ForecastController < ApplicationController
  def show
    GoogleGeocodeService.new.get_forecast(location)
  end

end

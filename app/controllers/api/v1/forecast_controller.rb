class ForecastController < ApplicationController
  def show
    GoogleGeocodeService.new.get_location(location)
  end

end

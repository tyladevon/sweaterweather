class GoogleGeocodeService
  attr_reader :location

  def initialize(location)
    @location = location
  end



  def get_forecast
    response = Faraday.get("https://maps.googleapis.com/maps/api/geocode/json") do |req|
      req.params[:address] = "Denver, CO"
      req.params[:key] = ENV['google_api_key']
    end
  end
end

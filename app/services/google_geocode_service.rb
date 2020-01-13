class GoogleGeocodeService

  def get_forecast(location)
    response = Faraday.get("https://maps.googleapis.com/maps/api/geocode/json") do |req|
      req.params[:address] = location
      req.params[:key] = ENV['google_api_key']
    end

    raw_data = JSON.parse(response.body, symbolize_names: true)
    Location.new(raw_data)
  end
end

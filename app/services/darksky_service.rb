class DarkskyService

  def get_forecast(key,lat, lng)
    response = Faraday.get("https://api.darksky.net/forecast/#{key}/#{lat},#{lng}") do |req|
    end
    @raw_data = JSON.parse(response.body, symbolize_names: true)
  end
end

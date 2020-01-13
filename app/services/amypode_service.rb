class AmypodeService

  def find_antipode(lat, long)
    response = Faraday.get("http://amypode.herokuapp.com/api/v1/antipodes") do |req|
      req.params['lat'] = lat
      req.params['long'] = long
      req.headers['api_key'] = ENV['amypode_api']
    end
    raw_data = JSON.parse(response.body, symbolize_names: true)
    Antipode.new(raw_data)
  end
end

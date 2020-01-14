class Gif
  def initialize(url, forecast_data)
    @id = nil
    @url = url
    @forecast_data = forecast_data
  end

  def get_response
    response = Hash.new
    @forecast_data[:hourly][:data].each do |forecast|
      response = { "time" => forecast[:time],
      "summary" => forecast[:summary],
      "url" => @url}
    end
    response
  end

end

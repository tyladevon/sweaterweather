class Gif
  def initialize(url, forecast_data)
    @id = nil
    @url = url
    @forecast_data = forecast_data
  end

  def get_response
    response = @forecast_data[:hourly][:data].each do |forecast|
      # binding.pry
      forecast[:time]
      forecast[:summary]
      @url
    end
    binding.pry
    response
  end

end

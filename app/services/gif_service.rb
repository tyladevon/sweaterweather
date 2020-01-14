class GifService
  def get_gif(forecast_summary)
    response = Faraday.get("https://api.giphy.com/v1/gifs/search") do |req|
      req.params[:api_key] = ENV['gif_api_key']
      req.params[:q] = "#{forecast_summary}"
    end
    raw_data = JSON.parse(response.body, symbolize_names: true)
  end
end

class Gif
  attr_reader :url,
              :time,
              :summary

  def initialize(url, time, summary)
    @url = url
    @time = time
    @summary = summary
  end
end

require 'rails_helper'

RSpec.describe DarkskyService do
  it "can get forecast for location" do
    forecast = subject.get_forecast(ENV['darksky_api_key'],39.7392,-104.9902)

    expect(forecast.current_weather).to_not be_empty
  end
end

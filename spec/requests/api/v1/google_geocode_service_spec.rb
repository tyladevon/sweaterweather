require 'rails_helper'

RSpec.describe "Google Geocode API Call" do
  it "can get coordinates for given location" do

    get '/api/v1/forecast'

    expect(response).to be_successful
    results = JSON.parse(response.body, symbolize_names: true)
  end
end

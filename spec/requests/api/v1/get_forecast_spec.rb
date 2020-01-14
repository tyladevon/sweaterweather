require 'rails_helper'

RSpec.describe "when going to '/forecast' endpoint with location params" do
  it "can get forecast for that location" do

    get "/api/v1/forecast?location=denver,co"

    expect(response).to be_successful

    results = JSON.parse(response.body, symbolize_names: true)

    expect(results).to be_a(Hash)
  end
end

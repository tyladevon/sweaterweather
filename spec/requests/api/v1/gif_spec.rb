require 'rails_helper'

RSpec.describe "when going to '/gif' endpoint with a location of Denver, CO" do
  it "can get a gif for that city and forecast" do

    get "/api/v1/gif?location=denver, co"

    expect(response).to be_successful

    results = JSON.parse(response.body, symbolize_names: true)

    expect(results).to be_a(Hash)

  end
end

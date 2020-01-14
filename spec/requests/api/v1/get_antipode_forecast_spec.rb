require 'rails_helper'

RSpec.describe "when going to '/antipode' endpoint" do
  it "can get antipode city and forecast" do

    get "/api/v1/antipode?location=hong kong"

    expect(response).to be_successful

    antipode_results = JSON.parse(response.body, symbolize_names: true)

    expect(antipode_results).to be_a(Hash)

  end
end

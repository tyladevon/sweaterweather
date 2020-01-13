require 'rails_helper'

RSpec.describe "when going to '/antipode' endpoint" do
  it "can get antipode city and forecast" do

    get "/api/v1/antipode?location=hong kong"

    expect(response).to be_successful
    
    antipode_results = JSON.parse(response.body, symbolize_names: true)

    expect(response[:data]).to_not be_empty
    expect(response[:data][:attributes][:location_name]).to eq("La Quiaca")
    expect(response[:data][:attributes][:forecast][:summary]).to_not be_empty
    expect(response[:data][:attributes][:forecast][:current_temperature]).to_not be_empty
    expect(response[:data][:attributes][:search_location]).to eq("Hong Kong")
  end
end

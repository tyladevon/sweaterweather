require 'rails_helper'

RSpec.describe "when going to '/api/v1/forecast?location=Denver,CO'" do
  it "I can see current weather for that location" do
    get "/api/v1/forecast?location=Denver,CO"

    expect(response).to be_successful
    
  end
end

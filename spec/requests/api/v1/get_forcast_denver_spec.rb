require 'rails_helper'

RSpec.describe "Sweater Weather can retrieve weather for a city" do
  it "can see forecast for denver location" do
    visit "/api/v1/forecast?"

  end
end

require 'rails_helper'

RSpec.describe GoogleGeocodeService do
  it "can get coordinates for given location" do
    location_info = subject.get_forecast("Denver, CO")

    expect(location_info.address).to eq("Denver, CO, USA")
    expect(location_info.address).to eq("Denver, CO, USA")
    expect(location_info.lat).to eq(39.7392358)
    expect(location_info.long).to eq(-104.990251)

  end
end

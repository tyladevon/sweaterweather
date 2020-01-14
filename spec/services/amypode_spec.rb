require 'rails_helper'

RSpec.describe AmypodeService do
  it "can get antipode lat/long for given origin" do
    antipode = subject.find_antipode(22.278, 114.175)

    expect(antipode.lat).to eq(-22.278)
    expect(antipode.long).to eq(-65.825)
  end

end

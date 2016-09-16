require 'rails_helper'

RSpec.describe City, type: :model do
  let(:istanbul) {City.create(name: 'Istanbul', featured_attraction: 'Hagia Sofia')}
  let(:francis) {Traveller.create(name: "Francis",origin: "Queens Baby")}
  let(:khaleda) {Traveller.create(name: "Khaleda",origin: "BK BIOTCH")}

  it "should be valid with name and a featured attraction" do
    expect(istanbul).to be_valid
  end
  it "should be invaild without a name or featured attraction" do
    bad_city_1 = City.create(name: "Taiwan")
    bad_city_2 = City.create(featured_attraction: "Charging Bull")
    bad_city_1.valid?
    bad_city_2.valid?
    expect(bad_city_1.errors[:featured_attraction]).to include("can't be blank")
    expect(bad_city_2.errors[:name]).to include("can't be blank")
  end


end

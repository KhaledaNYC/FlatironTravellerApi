require 'rails_helper'

RSpec.describe Traveller, type: :model do
  let(:istanbul)  {City.create(name: 'Istanbul', featured_attraction: 'Hagia Sofia')}
  let(:francis)  {Traveller.create(name: "Francis",origin: "Queens Baby")}
  let(:khaleda)  {Traveller.create(name: "Khaleda",origin: "BK BIOTCH")}
  it "is valid with a name and origin" do
    expect(khaleda).to be_valid

  end
  it "is invalid without a name and origin" do
    bad_traveller_1 = Traveller.create(origin: "Florida")
    bad_traveller_2 = Traveller.create(name:"JJ")
    bad_traveller_1.valid?
    bad_traveller_2.valid?
    expect(bad_traveller_1.errors[:name]).to include("can't be blank")
    expect(bad_traveller_2.errors[:origin]).to include("can't be blank")

  end
  it "traveller can take trip" do
    trip_1 = Trip.create(traveller_id: francis.id, city_id: istanbul.id )
    expect(francis.cities).to include(istanbul)

  end
end

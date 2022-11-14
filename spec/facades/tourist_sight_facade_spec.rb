require 'rails_helper'

RSpec.describe TouristSightFacade do
  describe '.sites', :vcr do
    it 'retrieves data for recipes' do
      lat = 30.03
      long =31.23
      sites = TouristSightFacade.sights(lat,long)
      expect(sites).to be_an Array
      expect(sites[0]).to be_a TouristSight
      expect(sites.count).to eq(10)
      expect(sites[1].name).to be_a String
      expect(sites[1].name).to eq("Drinkies")
      expect(sites[1].address).to eq("Magles Al Shaab Street, Bab al Luq, Cairo, 11613, Egypt")
      expect(sites[1].place_id).to be_a String
    end
  end
end
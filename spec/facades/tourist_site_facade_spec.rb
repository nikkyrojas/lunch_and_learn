require 'rails_helper'

RSpec.describe TouristSiteFacade do
  describe '.sites', :vcr do
    it 'retrieves data for recipes' do
      lat = 30.03
      long =31.23
      sites = TouristSiteFacade.sites(lat,long)
      binding.pry
      expect(sites).to be_an Array
      expect(sites[0]).to be_a TouristSite
      expect(sites.count).to eq(20)
      expect(sites[1].title).to be_a String
      expect(sites[1].title).to eq("Savory Sesame Cookies")
      expect(sites[1].image_url).to be_a String
      expect(sites[1].url).to be_a String
    end
  end
end
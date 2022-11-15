require 'rails_helper'

RSpec.describe CountryFacade do
  describe '.random_country', :vcr do
    it 'retrieves random country' do
      country = CountryFacade.random_country
      expect(country).to be_a(String)
    end
  end
  describe '.search_country(search)', :vcr do
    it 'retrieves country by search' do
      country = CountryFacade.search_country('canada')
      expect(country).to be_a Country
      expect(country.country_code).to eq("CA")
      expect(country.name).to eq("Canada")
      expect(country.lat).to eq(60.0)
      expect(country.lng).to eq(-95.0)
    end
  end
end
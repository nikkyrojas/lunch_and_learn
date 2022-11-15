require 'rails_helper'

RSpec.describe CountryService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_countries' do
      it 'returns a bunch of countries' do
        countries_hash = CountryService.get_countries
        expect(countries_hash.count).to eq 250
        expect(countries_hash).to be_an Array
        expect(countries_hash[0]).to be_a Hash
        expect(countries_hash[0][:name]).to be_a Hash
        expect(countries_hash[0][:name][:common]).to be_a String
      end
    end
    describe '.get_search_country(country)' do
      it 'returns a bunch a country by search param' do
        country = CountryService.get_search_country('canada')
        expect(country.count).to eq(1)
        expect(country).to be_an Array
        expect(country[0]).to be_a Hash
        expect(country[0][:name]).to be_a Hash
        expect(country[0][:latlng]).to be_an Array
        expect(country[0][:name][:common]).to be_a String
      end
    end
  end
end
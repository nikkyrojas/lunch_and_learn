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
  end
end
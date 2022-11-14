require 'rails_helper'

RSpec.describe TouristSiteService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_sites' do
      it 'returns a bunch of tourist sites based on lat long params' do
        sites_hash = TouristSiteService.get_sites(30.03,31.23)
        expect(sites_hash[:features].count).to eq 10
        expect(sites_hash[:features]).to be_an Array
        expect(sites_hash[:features][0]).to be_a Hash
        expect(sites_hash[:features][0][:properties]).to be_a Hash
        expect(sites_hash[:features][0][:properties][:name]).to be_a String
        expect(sites_hash[:features][0][:properties][:address_line2]).to be_a String
      end
    end
  end
end
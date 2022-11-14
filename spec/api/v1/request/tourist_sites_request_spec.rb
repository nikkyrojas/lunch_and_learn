require 'rails_helper'

RSpec.describe 'TouristSights API' do
  describe 'TouristSights endpoint' do
    context 'Happy Path', :vcr do
      it 'response is successful' do 
        get '/api/v1/tourist_sights?country=France'

        expect(response).to be_successful
        expect(response.status).to eq(200)
      end 

      it 'response format is correct' do 
        get '/api/v1/tourist_sights?country=France'
        json_response = JSON.parse(response.body, symbolize_names: true)
        sites_data = json_response[:data]
        expect(sites_data).to be_an Array
        expect(sites_data[0]).to be_a Hash
        
        sites_data.each do |site|
          expect(site[:id]).to eq(nil)
          expect(site[:type]).to eq('sight')
          expect(site[:attributes]).to be_a(Hash)
          #it fails for the below lines saying it name is nil
          #but if you delete fixtures
          #and run the test with a pry here name isnt nil
          expect(site[:attributes][:name]).to be_a(String)
          expect(site[:attributes][:address]).to be_a String
          expect(site[:attributes][:place_id]).to be_a String
        end
      end 
    end
  end
end
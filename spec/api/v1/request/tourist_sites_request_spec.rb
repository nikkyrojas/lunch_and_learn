require 'rails_helper'

RSpec.describe 'Recipe API' do 
  describe 'recipes endpoint' do
    context 'Happy Path' do
      it 'response is successful', :vcr do 
        get '/api/v1/tourist_sights?country=France'

        expect(response).to be_successful
        expect(response.status).to eq(200)
      end 

      it 'response format is correct', :vcr do 
        get '/api/v1/tourist_sights?country=France'

        json_response = JSON.parse(response.body, symbolize_names: true)
        sites_data = json_response[:data]
        expect(sites_data).to be_an Array
        expect(sites_data[0]).to be_a Hash
        expect(sites_data[0][:id]).to eq(nil)
        expect(sites_data[0][:attributes]).to be_a(Hash)
      end 
    end
  end
end
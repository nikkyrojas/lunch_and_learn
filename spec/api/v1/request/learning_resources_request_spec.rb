require 'rails_helper'

RSpec.describe 'Youtube API' do 
  describe 'learning resources endpoint mr.history youtube channel' do
    context 'Happy Path' do
      it 'response is successful', :vcr do 
        get '/api/v1/learning_resources?country=laos'

        expect(response).to be_successful
        expect(response.status).to eq(200)
      end 

      it 'response format is correct', :vcr do 
        get '/api/v1/learning_resources?country=laos'

        json_response = JSON.parse(response.body, symbolize_names: true)
        learning_resources = json_response[:data]
        expect(learning_resources).to be_an Hash
        expect(learning_resources).to be_a Hash
        expect(learning_resources[:id]).to eq(nil)
        expect(learning_resources[:type]).to eq("learning_resource")
        expect(learning_resources[:attributes]).to be_a(Hash)
        expect(learning_resources[:attributes][:country]).to eq("laos")
        expect(learning_resources[:attributes][:video][:title]).to be_a(String)
        expect(learning_resources[:attributes][:images][0][:url]).to be_a(String)
        expect(learning_resources[:attributes][:images][0][:alt_tag]).to be_a(String)
      end 
    end
    context 'edgacase/sad path' do
      xit 'if no video matchs, return empty array', :vcr do 
        get '/api/v1/learning_resources?country=owega'

        json_response = JSON.parse(response.body, symbolize_names: true)
        recipe_data = json_response[:data]
      end 
    end
  end
end
require 'rails_helper'

RSpec.describe 'Recipe API' do 
  describe 'recipes endpoint' do
    context 'Happy Path' do
      it 'response is successful', :vcr do 
        get '/api/v1/recipes?country=thailand'

        expect(response).to be_successful
        expect(response.status).to eq(200)
      end 

      it 'response format is correct', :vcr do 
        get '/api/v1/recipes?country=thailand'

        json_response = JSON.parse(response.body, symbolize_names: true)
        recipe_data = json_response[:data]
        expect(recipe_data).to be_an Array
        expect(recipe_data[0]).to be_a Hash
        expect(recipe_data[0][:id]).to eq(nil)
        expect(recipe_data[0][:attributes]).to be_a(Hash)
        expect(recipe_data[0][:attributes][:title]).to be_a(String)
        expect(recipe_data[0][:attributes][:url]).to be_a(String)
        expect(recipe_data[0][:attributes][:country]).to be_a(String)
        expect(recipe_data[0][:attributes][:image]).to be_a(String)
      end 
    end
    context 'edgacase/sad path' do
      it 'if country param is nil return a random country/recipe', :vcr do 
        get '/api/v1/recipes?'

        json_response = JSON.parse(response.body, symbolize_names: true)
        recipe_data = json_response[:data]

        expect(recipe_data).to be_an Array
        expect(recipe_data[0]).to be_a Hash
        expect(recipe_data[0][:id]).to eq(nil)
        expect(recipe_data[0][:type]).to eq("recipe")
        expect(recipe_data[0][:attributes]).to be_a(Hash)
        expect(recipe_data[0][:attributes][:title]).to be_a(String)
        expect(recipe_data[0][:attributes][:url]).to be_a(String)
        expect(recipe_data[0][:attributes][:country]).to be_a(String)
        expect(recipe_data[0][:attributes][:image]).to be_a(String)
      end 
    
      it 'empty country search param gives empty array', :vcr do 
        get '/api/v1/recipes?country='
        json_response = JSON.parse(response.body, symbolize_names: true)
        recipe_data = json_response[:data]

        expect(recipe_data).to be_an Array
        expect(recipe_data).to eq([])
      end 
      # xit 'recieves a recipe when there is space in the name', :vcr do 
      #   country = 'united kingdom'
      #   get "/api/v1/recipes?country=#{country}"
      #   json_response = JSON.parse(response.body, symbolize_names: true)
      #   recipe_data = json_response[:data]

      #   expect(recipe_data).to be_an Array
      #   expect(recipe_data).to eq([])
      # end 
    end
  end
end
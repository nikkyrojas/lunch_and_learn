require 'rails_helper'

RSpec.describe 'Recipe API' do 
  xit 'response is successful', :vcr do 
    get '/api/v1/recipes?country=thailand'

    expect(response).to be_successful
    expect(response.status).to eq(200)
  end 
 
  xit 'response format is correct', :vcr do 
    get '/api/v1/recipes?country=thailand'


    json_response = JSON.parse(response.body, symbolize_names: true)
    recipe_data = json_response[:data]

    expect(recipe_data).to be_a(Hash)
    expect(recipe_data[:id]).to eq(nil)
    expect(recipe_data[:attributes]).to be_a(Hash)
  end 
end
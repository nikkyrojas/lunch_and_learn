require 'rails_helper'

RSpec.describe 'Favorites Api' do
  describe 'favorite request endpoint' do
    context 'Happy Path', :vcr do
      it 'response is successful for creating a favorite' do 
        favorite_params = ({
                    "api_key": "24c58722a3d8110e9f3af5c9",
                    "country": "thailand",
                    "recipe_link": "https://www.tastingtable.com/.....",
                    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
                          })
        headers = {"CONTENT_TYPE" => "application/json"}
        post "/api/v1/favorites", headers: headers, params: JSON.generate(favorite_params)

        expect(response).to be_successful
        expect(response.status).to eq(201)

        json_response = JSON.parse(response.body)
        
        new_favorite = Favorite.last
        expect(json_response).to be_a Hash
        expect(new_favorite.country).to eq("thailand")
        expect(new_favorite.recipe_link).to eq("https://www.tastingtable.com/.....")
        expect(new_favorite.recipe_title).to eq("Crab Fried Rice (Khaao Pad Bpu)")
        expect(new_favorite.user_id).to eq(13)
      end 
      
      it 'response is successful for retrieving favorites' do
        favorite_params = ({
                    "api_key": "24c58722a3d8110e9f3af5c9",
                    "country": "thailand",
                    "recipe_link": "https://www.tastingtable.com/.....",
                    "recipe_title": "Some other yummy food"
                          })
        headers = {"CONTENT_TYPE" => "application/json"}
        post "/api/v1/favorites", headers: headers, params: JSON.generate(favorite_params)
        
        get "/api/v1/favorites?api_key=24c58722a3d8110e9f3af5c9"

        expect(response).to be_successful
        expect(response.status).to eq(200)

          json_response = JSON.parse(response.body, symbolize_names: true)
          favorites = json_response[:data]
        
        expect(favorites).to be_a Array
        expect(favorites[0][:id]).to be_an Integer
        expect(favorites[0][:type]).to eq("favorite")
        expect(favorites[0][:attributes]).to be_a Hash
        expect(favorites[0][:attributes][:recipe_title]).to be_a String
        expect(favorites[0][:attributes][:recipe_link]).to be_a String
        expect(favorites[0][:attributes][:country]).to eq("thailand")
      end 
    end
    context 'Edgecase Sad Path', :vcr do
      it 'return error if api does not match', :vcr do 
        favorite_params = ({
                    "api_key": "n0tanapik3y",
                    "country": "thailand",
                    "recipe_link": "https://www.tastingtable.com/.....",
                    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
                          })
        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/favorites", headers: headers, params: JSON.generate(favorite_params)
        expect(response).to_not be_successful
        expect(response.status).to eq(400)
        expect(response.body).to include("param missing or api key invalid")
      end 

      it 'return error if a param is missing', :vcr do 
        favorite_params = ({
                    "country": "thailand",
                    "recipe_link": "https://www.tastingtable.com/.....",
                    "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)"
                          })
        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/favorites", headers: headers, params: JSON.generate(favorite_params)
        expect(response).to_not be_successful
        expect(response.status).to eq(400)
        expect(response.body).to include("param missing or api key invalid")
      end 
    end
  end
end
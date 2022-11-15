require 'rails_helper'

RSpec.describe 'User Api' do
  describe 'user request endpoint' do
    context 'Happy Path', :vcr do
      it 'response is successful' do 
          user_params = ({
                  "name": "Test Example",
                  "email": "testing123@example.com",
                  "password": "test123",
                  "password_confirmation": "test123"
                })
        headers = {"CONTENT_TYPE" => "application/json"}
        post "/api/v1/users", headers: headers, params: JSON.generate(user_params)


        expect(response).to be_successful
        expect(response.status).to eq(201)

        json_response = JSON.parse(response.body)
        
        new_user = User.last

        expect(json_response).to be_a Hash
        expect(new_user.email).to eq("testing123@example.com")
        expect(new_user.name).to eq("Test Example")
        expect(new_user.password_digest).to be_a(String)
        expect(new_user.password_digest).to_not eq("test123")
      end 
    end
    context 'Edgecase Sad Path', :vcr do
      it 'return error if passwords dont match', :vcr do 
        user_params = ({
                        "name": "Test Example",
                        "email": "testing@example.com",
                        "password": "test123",
                        "password_confirmation": "teaD123"
                      })

        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/users", headers: headers, params: JSON.generate(user_params)
        expect(response).to_not be_successful
        expect(response.status).to eq(400)
        expect(response.body).to include("One or all of the following have occured: Passwords do not match, email already exist, or field is missing")
      end 
      it 'return error if param is missing', :vcr do 
        user_params = ({
                        "email": "testing@example.com",
                        "password": "test123",
                        "password_confirmation": "teaD123"
                      })

        headers = {"CONTENT_TYPE" => "application/json"}

        post "/api/v1/users", headers: headers, params: JSON.generate(user_params)
        expect(response).to_not be_successful
        expect(response.status).to eq(400)
        expect(response.body).to include("One or all of the following have occured: Passwords do not match, email already exist, or field is missing")
      end 
    end
  end
end
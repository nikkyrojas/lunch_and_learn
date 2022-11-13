Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :sessions, only: [:create]
      resources :recipes, only: [:index]
      resources :users, only: [:index, :create]
    end
  end
end

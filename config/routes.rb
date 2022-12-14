Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :sessions, only: [:create, :index, :destroy]
      resources :favorites, only: [:create, :index, :destroy]
      resources :recipes, only: [:index]
      resources :learning_resources, only: [:index]
      resources :users, only: [:index, :create]
      resources :tourist_sights, only: [:index]
    end
  end
end

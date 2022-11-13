class Api::V1::RecipesController < ApplicationController
  def index
    #gets recipes based on country
    recipes = RecipeFacade.recipes(params[:country]) if params[:country]
    else
      country = CountryService.get_countries.shuffle.first
      recipes = RecipeFacade.recipes(params[:country])
    end
  end
end
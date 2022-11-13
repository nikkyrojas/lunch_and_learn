class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country].present?
      recipes = RecipeFacade.recipes(params[:country])
      render json: RecipeSerializer.format_recipes(recipes)
    else 
      country = CountryFacade.random_country
      recipes = RecipeFacade.recipes(country)
      render json: RecipeSerializer.format_recipes(recipes)
    end
  end
end
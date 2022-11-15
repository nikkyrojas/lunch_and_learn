class Api::V1::FavoritesController < ApplicationController
  def create
    if user = User.find_by(api_key: params[:api_key])
      new_favorite = Favorite.new(favorite_params)
      new_favorite.user_id = user.id
      new_favorite.save
      render json: {success: "Favorite added successfully"}, status: 201
    else
      render json: { errors: "param missing or api key invalid"}, status: 400 
    end
  end

  def destroy
    favorite.destroy
  end
  
  private 
  def favorite_params
    params.permit(:country, :recipe_link, :recipe_title, :user_id)
  end
end

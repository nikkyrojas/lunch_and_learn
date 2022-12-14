class Api::V1::FavoritesController < ApplicationController
  def index
    if params[:api_key].present?
    user = User.find_by(api_key: params[:api_key])
    favorites = user.favorites 
    render json: FavoriteSerializer.format_favorites(favorites), status:200
    else
      render json: { errors: "param missing"}, status: 400
    end
  end

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
    render json: Favorite.destroy(params[:id]), status: 204
  end
  
  private 
  def favorite_params
    params.permit(:country, :recipe_link, :recipe_title, :user_id)
  end
end

class Api::V1::LearningResourcesController < ApplicationController
  def index
    if params[:country].present? 
      video = LearningResourceFacade.youtube_videos(params[:country].last)
      images = LearningResourceFacade.unsplash_images(params[:country])
      render json: LearningResourceSerializer.format_resources(video,images,params[:country])
    else
    country = CountryFacade.random_country
    video = LearningResourceFacade.youtube_videos(country).first
    images = LearningResourceFacade.unsplash_images(country)
    render json: LearningResourceSerializer.format_resources(video,images,country)
    end
  end
end
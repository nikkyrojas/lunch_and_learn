class Api::V1::TouristSightsController < ApplicationController
  def index
    country = CountryFacade.search_country(params[:country])
    sights = TouristSightFacade.sights(country.lat, country.lng)
    render json: TouristSightSerializer.format_sights(sights)
  end
end
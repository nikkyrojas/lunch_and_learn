class Recipe
  attr_reader :title,
              :url,
              :country,
              :image_url

  def initialize(recipe_data, country)
    @title = recipe_data[:recipe][:label]
    @url = recipe_data[:recipe][:uri]
    @country = country
    @image_url = recipe_data[:recipe][:image]
  end
end

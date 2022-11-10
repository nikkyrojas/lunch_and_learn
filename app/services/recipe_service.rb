class RecipeService
  def self.get_recipe_by_country(country)
    response ||= conn.get("/api/recipes/v2?type=public&q=#{country}&app_id=#{ENV['edamam_app_id']}&app_key=#{ENV['edamam_recipe_key']}")
    RecipeService.parse(response)
  end

  def self.conn
    Faraday.new('https://api.edamam.com')
  end
  
  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end

class RecipeFacade
  def self.recipes(country)
    RecipeService.get_recipe_by_country(country)[:hits].map do |recipe|
      Recipe.new(recipe, country)
    end
  end
end
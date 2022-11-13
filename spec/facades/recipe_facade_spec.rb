require 'rails_helper'

RSpec.describe RecipeFacade do
  describe '.recipes(country)', :vcr do
    it 'retrieves data for recipes' do
      recipes = RecipeFacade.recipes('france')
      expect(recipes[0]).to be_a Recipe
      expect(recipes.count).to eq(20)
      expect(recipes[1].title).to be_a String
      expect(recipes[1].title).to eq("Savory Sesame Cookies")
      expect(recipes[1].image_url).to be_a String
      expect(recipes[1].url).to be_a String
    end
  end
end
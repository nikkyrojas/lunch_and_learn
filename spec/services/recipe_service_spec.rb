require 'rails_helper'

RSpec.describe RecipeService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_recipes' do
      it 'returns recipes' do
        recipe_hash = RecipeService.get_recipes
        expect(recipe_hash.count).to eq 20
      end
    end
  end
end
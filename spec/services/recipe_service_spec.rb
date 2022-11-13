require 'rails_helper'

RSpec.describe RecipeService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_recipes' do
      it 'returns recipes' do
        recipe_hash = RecipeService.get_recipe_by_country("mexico")
        expect(recipe_hash[:hits].count).to eq 20
        expect(recipe_hash[:hits]).to be_an Array
        expect(recipe_hash[:hits].first).to be_a Hash
        expect(recipe_hash[:hits].first[:recipe]).to be_a Hash
      end
    end
  end
end
require 'rails_helper'

RSpec.describe RecipeService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_recipes' do
      it 'returns recipes' do
        recipe_hash = RecipeService.get_recipes
        expect(recipe_hash.count).to eq 20
        expect(recipe_hash[0][:genre_ids]).to be_a Array
        expect(recipe_hash[0][:id]).to be_a Integer
        expect(recipe_hash[0][:title]).to be_a String
        expect(recipe_hash[0][:vote_average]).to be_a Float
        expect(recipe_hash[0][:overview]).to be_a String
      end
    end
  end
end
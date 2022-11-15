require 'rails_helper'

RSpec.describe ImageLearningResourceService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_images(country)' do
      it 'returns image for country given' do
        images = ImageLearningResourceService.get_images('italy')
        expect(images[:results].count).to eq(10)
        expect(images[:results]).to be_an Array
        expect(images[:results][0]).to be_a Hash
        expect(images[:results][0][:alt_description]).to be_a String
        expect(images[:results][0][:urls][:regular]).to be_a String
      end
    end
  end
end
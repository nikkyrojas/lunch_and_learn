require 'rails_helper'

RSpec.describe LearningResourceService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_videos(country)' do
      it 'returns videos for country given' do
        videos = LearningResourceService.get_videos('italy')
        expect(videos[:items].count).to eq(3)
        expect(videos[:items]).to be_an Array
        expect(videos[:items][0]).to be_a Hash
        expect(videos[:items].first[:etag]).to be_a String
        expect(videos[:items].first[:snippet][:title]).to be_a String
      end
    end
  end
end
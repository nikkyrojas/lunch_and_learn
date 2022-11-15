require 'rails_helper'

RSpec.describe LearningResourceFacade do
  describe '.youtube_videos(country)', :vcr do
    it 'retrieves an array of videos that match country param' do
      videos = LearningResourceFacade.youtube_videos('Tuvalu')
      expect(videos).to be_an Array
      expect(videos[0].etag).to be_a String
      expect(videos[0].title).to be_a String
    end
  end
end
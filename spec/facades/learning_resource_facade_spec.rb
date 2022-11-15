require 'rails_helper'

RSpec.describe LearningResourceFacade do
  describe '.youtube_videos(country)', :vcr do
    it 'retrieves an array of videos that match country param' do
      video = LearningResourceFacade.youtube_videos('Tuvalu')
      expect(video).to be_a YoutubeVideo
      expect(video.etag).to be_a String
      expect(video.title).to be_a String
    end
  end
end
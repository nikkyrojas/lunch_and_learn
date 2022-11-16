require 'rails_helper'

RSpec.describe LearningResourceFacade do
  describe '.youtube_videos(country)', :vcr do
    it 'retrieves an array of videos that match country param' do
      video = LearningResourceFacade.youtube_videos('Tuvalu')
      expect(video).to be_a YoutubeVideo
      expect(video.etag).to be_a String
      expect(video.title).to be_a String
    end
    it 'retrieves an array of videos that match country param' do
      images = LearningResourceFacade.unsplash_images('Tuvalu')
      expect(images).to be_an Array
      expect(images[0]).to be_a Image
      expect(images[0].description).to be_a String
      expect(images[0].url).to be_a String
    end
  end
end
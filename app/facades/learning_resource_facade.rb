class LearningResourceFacade
  def self.youtube_videos(country)
    video = LearningResourceService.get_videos(country)[:items].first
    YoutubeVideo.new(video)
  end

  def self.unsplash_images(country)
    ImageLearningResourceService.get_images(country)[:results].map do |images|
      Image.new(images)
    end
  end
end
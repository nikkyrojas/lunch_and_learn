class LearningResourceFacade
  def self.youtube_videos(country)
    LearningResourceService.get_videos(country)[:items].map do |video|
      YoutubeVideo.new(video)
    end
  end

  def self.unsplash_images(country)
    ImageLearningResourceService.get_images(country)[:results].map do |images|
      Image.new(images)
    end
  end
end
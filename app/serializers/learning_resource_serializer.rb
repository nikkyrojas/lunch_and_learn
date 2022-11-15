class LearningResourceSerializer
  def self.format_resources(video,images,country)
    {
      data:
        {
          id: nil,
          type: 'learning_resource',
          attributes: 
            {
              country: country,
              video: {
                title: video.title,
                youtube_video_id: video.etag
              },
              images: images.map do |image|
                {
                  alt_tag: image.alt_tag,
                  url: image.url,
                  description: image.description
                }
              end
            }
        }
    }        
  end
end
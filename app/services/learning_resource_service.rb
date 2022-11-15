class LearningResourceService
  def self.conn
    Faraday.new("https://youtube.googleapis.com")
  end

  def self.get_videos(country)
    response = conn.get("/youtube/v3/search?part=snippet&channelId=#{ENV['channel_id']}&maxResults=3&key=#{ENV['youtube_google_api_key']}") 
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

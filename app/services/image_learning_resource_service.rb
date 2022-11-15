class ImageLearningResourceService
  def self.conn
    Faraday.new("https://api.unsplash.com")
  end

  def self.get_images(country)
    response = conn.get("/search/photos?per_page=10&query=#{country}&client_id=#{ENV['unsplash_access_key']}") 
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

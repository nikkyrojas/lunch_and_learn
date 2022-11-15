class TouristSightService
  def self.conn
    Faraday.new("https://api.geoapify.com")
  end

  def self.get_sights(lat,long)
    response = conn.get("/v2/places?categories=commercial.food_and_drink&filter=circle:#{long},#{lat},20000&bias=proximity:#{long},#{lat}&limit=10&apiKey=#{ENV['geo_coding_api_key']}") 
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
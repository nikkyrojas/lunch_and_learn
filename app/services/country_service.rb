class CountryService
  def self.conn
    Faraday.new("https://restcountries.com")
  end

  def self.get_countries
    response = conn.get("/v3.1/all") 
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_search_country(country)
    response = conn.get("/v3.1/name/#{country}") 
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end

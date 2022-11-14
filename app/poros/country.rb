class Country
  attr_reader :name,
              :country_code,
              :lat,
              :lng

  def initialize(data)
    @name = data[:name][:common]
    @country_code = data[:cca2]
    @lat= data[:latlng].first
    @lng= data[:latlng].last
  end
end
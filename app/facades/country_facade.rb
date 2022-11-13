class CountryFacade
  def self.random_country
    countries = CountryService.get_countries.map do |country|
      Country.new(country)
    end
    countries.shuffle[0].name
  end
end
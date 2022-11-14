class TouristSightFacade
  def self.sights(lat,long)
    sites = TouristSightService.get_sights(lat,long)[:features].map do |site|
      TouristSight.new(site)
    end
  end
end
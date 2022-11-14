class TouristSiteFacade
  def self.sites(lat,long)
    sites = TouristSiteService.get_sites(lat,long)[:features].map do |site|
      TouristSite.new(site)
    end
    sites.shuffle[0]
  end
end
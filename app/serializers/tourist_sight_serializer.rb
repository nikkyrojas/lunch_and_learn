class TouristSightSerializer
  def self.format_sights(sights)
    {
      data: sights.map do |sight| 
        {
          id: nil,
          type: 'sight',
          attributes: 
            {
              name: sight.name,
              place_id: sight.place_id,
              address: sight.address,
            }
        }
      end
    }        
  end
end
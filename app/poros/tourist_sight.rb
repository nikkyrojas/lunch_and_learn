class TouristSight
  attr_reader :name,
              :address,
              :place_id


  def initialize(data)
    @name = data[:properties][:name] || "un-named"
    @address = data[:properties][:address_line2]
    @place_id = data[:properties][:place_id]
  end
end
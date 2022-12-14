class Image
  attr_reader :alt_tag,
              :url,
              :description

  def initialize(data)
    @alt_tag = data[:alt_description] || "no_tag"
    @url = data[:urls][:regular]
    @description = data[:description]
  end
end
class YoutubeVideo
  attr_reader :title,
              :etag,
              :description

  def initialize(data)
    @etag = data[:etag] || "no tag"
    @title = data[:snippet][:title]
    @description =  data[:snippet][:description]
  end
end
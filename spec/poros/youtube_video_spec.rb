require 'rails_helper'
RSpec.describe YoutubeVideo do
  describe 'instantiation' do
    let(:data) do
      {snippet:
        {title: 'all about columbia',
        description: 'some other description' },
      etag: 'v45yrve54',
      url: 'www.sgsrgt.sewteg.sgw'
      }
    end

    it 'instantiates described class' do
      video = YoutubeVideo.new(data)
      expect(video).to be_instance_of(described_class)
      expect(video.title).to eq('all about columbia')
      expect(video.etag).to eq('v45yrve54')
      # expect(video.url).to be( undefined )
    end
  end
end

require 'rails_helper'

RSpec.describe TouristSight do
  describe 'instantiation' do
    let(:data) do
      {properties:
        {
          name: 'Beutiful Mountains',
          address_line2: 'somewhere, co, usa',
          place_id: '39w4yr39fh238ft9h392fwr6'
        }
      }
    end

    it 'instantiates described class' do
      site = TouristSight.new(data)
      expect(site).to be_instance_of(described_class)
      expect(site.name).to eq('Beutiful Mountains')
      expect(site.address).to eq('somewhere, co, usa')
      expect(site.place_id).to eq('39w4yr39fh238ft9h392fwr6')
    end
  end
end

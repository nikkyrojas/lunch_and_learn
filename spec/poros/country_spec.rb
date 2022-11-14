
require 'rails_helper'

RSpec.describe Country do
  describe 'instantiation' do
    let(:data) do
      {name:
        {common: 'columbia'},
      cca2: "CO",
      latlng: [39, -76]
      }
    end

    it 'instantiates described class' do
      country = Country.new(data)
      expect(country).to be_instance_of(described_class)
      expect(country.name).to eq(data[:name][:common])
      expect(country.name).to eq('columbia')
      expect(country.country_code).to eq('CO')
      expect(country.lat).to eq(39)
      expect(country.lng).to eq(-76)
    end
  end
end

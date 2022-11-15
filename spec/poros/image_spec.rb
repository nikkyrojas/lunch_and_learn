require 'rails_helper'
RSpec.describe Image do
  describe 'instantiation' do
    let(:data) do
      {urls:
        {regular: 'wwww.sihfesaiefhsoskeg_Sgsrg.com'},
      alt_description: 'something something something',
      description: 'what ever u want to put'
      }
    end

    it 'instantiates described class' do
      image = Image.new(data)
      expect(image).to be_instance_of(described_class)
      expect(image.url).to eq('wwww.sihfesaiefhsoskeg_Sgsrg.com')
      expect(image.alt_tag).to eq('something something something')
      # expect(image.kind).to be( undefined )
    end
  end
end

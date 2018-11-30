RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create(image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg", run_time: 60)
        expect(special).to_not be_valid
      end
      
      it 'should be invalid if missing a image url' do
        special = Special.create(name: "Dave Chappelle: Equanimity", run_time: 60)
        expect(special).to_not be_valid
      end

      it 'should be invalid if missing a runtime' do
        special = Special.create(name: "Dave Chappelle: Equanimity", image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
        expect(special).to_not be_valid
      end
    end
  end

  describe 'Relations' do
    it "has one Comedian" do
      association = described_class.reflect_on_association(:comedian)
      expect(association.macro).to eq :belongs_to
    end
  end
end

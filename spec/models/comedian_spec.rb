RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48, img: "url")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg', img: "url")
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an img url' do
        comic = Comedian.create(name: 'Mitch Hedberg', age: 48)
        expect(comic).to_not be_valid
      end
    end
    
    describe 'Relations' do
      it "has many specials" do
        association = Comedian.reflect_on_association(:specials)
        expect(association.macro).to eq :has_many
      end
    end

    describe 'Class Methods' do
      before(:each) do
        Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, DC", img: "https://s3.amazonaws.com/laugh-track-comedians/dave-crop.jpg")
        Comedian.create(name: "Louis CK", age: 51, city: "Washington, DC", img: "https://s3.amazonaws.com/laugh-track-comedians/louis-crop.jpg")
        Comedian.create(name: "Bill Bur", age: 50, city: "Canton, Massachusett", img: "https://s3.amazonaws.com/laugh-track-comedians/bill-crop.jpg")
      end

      it 'should return the average age of all comedians' do
        expect(Comedian.average_age).to eq 48
      end

      it 'should return unique cities for all comedians' do
        actual = ["Washington, DC", "Canton, Massachusett"]

        expect(Comedian.unique_cities).to eq actual
      end
    end
  end
end

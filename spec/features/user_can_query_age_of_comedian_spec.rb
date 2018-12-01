RSpec.describe "As a visitor" do
  describe "when I visit /comedians?age=50" do

    before(:each) do
      @dave = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, DC", img: "https://s3.amazonaws.com/laugh-track-comedians/dave-crop.jpg")
      @dave_special_1 = @dave.specials.create( name: "Dave Chappelle: Equanimity", image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg", run_time: 60)
      @dave_special_2 = @dave.specials.create( name: "Dave Chappelle: The Bird Revelation", image_url: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg", run_time: 49)

      @louis = Comedian.create(name: "Louis CK", age: 50, city: "Washington, DC", img: "https://s3.amazonaws.com/laugh-track-comedians/louis-crop.jpg")
      @louis_special_1 = @louis.specials.create( name: "Louis C.K. 2017", image_url: "https://m.media-amazon.com/images/M/MV5BODJlMmIyNjEtZDQ0ZS00MGIyLWEyZmYtOTQyYTQyMWJkODhmXkEyXkFqcGdeQXVyMjQ0ODQ0MzQ@._V1_SY1000_CR0,0,666,1000_AL_.jpg", run_time: 74)
      @louis_special_2 = @louis.specials.create( name: "Louis C.K.: Live at the Comedy Store", image_url: "https://m.media-amazon.com/images/M/MV5BNGYzOTE0YzEtMjc5NC00MTg2LTk2MDAtMzJlMjM1NTU1MjcwXkEyXkFqcGdeQXVyMTk2ODU0OTM@._V1_.jpg", run_time: 66)

      @bill = Comedian.create(name: "Bill Bur", age: 50, city: "Canton, Massachusett", img: "https://s3.amazonaws.com/laugh-track-comedians/bill-crop.jpg")
      @bill_special_1 = @bill.specials.create( name: "Bill Burr: Walk Your Way Out", image_url: "https://m.media-amazon.com/images/M/MV5BMGYwNDE4MDItNjQwYi00NWIwLWJmYTYtY2I5NDEyMGUxNWMwL2ltYWdlXkEyXkFqcGdeQXVyMjUwMTM3MTU@._V1_.jpg", run_time: 77)
      @bill_special_2 = @bill.specials.create( name: "Bill Burr: I'm Sorry You Feel That Way", image_url: "https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_SY1000_SX675_AL_.jpg", run_time: 80)
    end

    it "should display a list of comedians whose age is 50" do

      visit '/comedians?age=50'

      within(".carousel-inner") do
        expect(page).to have_css(".carousel-item", :count => 3)
      end

      expect(page).to have_css("#carousel_#{@louis.id}")
      expect(page).to have_css("#carousel_#{@bill.id}")
      expect(page).to_not have_css("#carousel_#{@dave.id}")

    end

    it "should display specials" do

      visit '/comedians?age=50'

      expect(page).to have_css("#special_#{@louis_special_1.id}")
      expect(page).to have_css("#special_#{@louis_special_2.id}")
      expect(page).to have_css("#special_#{@bill_special_1.id}")
      expect(page).to have_css("#special_#{@bill_special_2.id}")
      expect(page).to_not have_css("#special_#{@dave_special_1.id}")
      expect(page).to_not have_css("#special_#{@dave_special_2.id}")
    end

    it "should display stats on comedians" do

      visit '/comedians?age=50'

      within(".stats") do
        expect(page).to have_content("Average age: 50")
        expect(page).to have_content("Average specials run time: 67.66")
      end
    end
  end
end
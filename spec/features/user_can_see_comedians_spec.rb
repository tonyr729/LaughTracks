RSpec.describe 'As a visitor' do
  before(:each) do
    @comedian = Comedian.create(name: "Tony", age: 30, city: "Tahoe")
  end

  it 'allows user to see carousel' do
    visit '/comedians'
    expect(page).to have_content("- Laugh Tracks -")
  end

  it 'allows user to see comedians' do
    visit '/comedians'

    within("#carousel_#{@comedian.id}") do
      expect(page).to have_content(@comedian.name)
  
      within("#info_#{@comedian.id}") do
        expect(page).to have_content(@comedian.age)
        expect(page).to have_content(@comedian.city)
      end
    end

    within("#img_#{@comedian.id}") do
      expect(page).to have_content(@comedian.img)
    end
  end

end
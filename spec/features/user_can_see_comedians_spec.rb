RSpec.describe 'As a visitor' do
  describe "when I go to comedians page" do
    before(:each) do
      @comedian = Comedian.create(name: "Tony", age: 30, city: "Tahoe")
      @special = @comedian.specials.create(name: "Holy @#$% I'm funny", image_url: "me_being_funny.jpg", run_time: 75)
    end
  
    describe 'for the comedian info' do
      it 'displays a carousel' do
        visit '/comedians'
        expect(page).to have_content("- Laugh Tracks -")
      end
    
      it 'displays comedians' do
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

    describe 'for the specials info' do
      it 'displays the count of the comedians specials' do
        visit '/comedians'
        
        within(".specials-main-title") do
            expect(page).to have_content(@comedian.specials.all.count)
        end
      end
    
      it 'displays each comedians specials' do
        visit '/comedians'
        
        within(".specials-container") do
          within("#special_#{@special.id}") do
            expect(page).to have_content(@special.name)
            expect(page).to have_css("img[src*='#{@special.image_url}']")
          end
        end
      end
    end
  end
end
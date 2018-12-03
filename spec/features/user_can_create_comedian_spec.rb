RSpec.describe 'As a visitor' do
  it 'allows user to create a comedian' do
    visit '/comedians/new'

    fill_in 'comedian[name]', with: "Tony Robertson"
    fill_in 'comedian[age]', with: 30
    fill_in 'comedian[city]', with: "Denver, CO"
 
    click_button 'Submit'

    expect(current_path).to eq('/comedians')

    expect(page).to have_content("Tony Robertson")
  end
end

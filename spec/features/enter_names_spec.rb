describe "web page content", :type => :feature do
  it "should have Welcome to the battle" do
    visit "/"
    expect(page).to have_content("Welcome to the battle")
  end
end


describe "submitting player names", :type => :feature do

   it "should store player names" do
   visit "/"
   fill_in "player_1", :with => "Giada"
   fill_in "player_2", :with => "Tom"
   click_button "Submit"
   expect(page).to have_content("Player 1: Giada Player 2: Tom")
  end
end

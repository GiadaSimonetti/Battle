describe "web page content", :type => :feature do
  it "should have Testing infrastructure working!" do
    visit "/"
    expect(page).to have_content("Testing infrastructure working!")
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

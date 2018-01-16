describe "web page content", :type => :feature do
  it "should have Welcome to the battle" do
    visit "/"
    expect(page).to have_content("Welcome to the battle")
  end
end


describe "submitting player names", :type => :feature do

   it "should store player names" do
    sign_in_and_play
   expect(page).to have_content("Player 1: Giada Player 2: Tom")
  end
end

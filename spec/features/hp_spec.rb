describe "checking player hp", :type => :feature do

   it "show us play 2's health" do
   visit "/play"
   click_button "Player_2_health"
   expect(page).to have_content("Player 2's health = 80")
  end
end
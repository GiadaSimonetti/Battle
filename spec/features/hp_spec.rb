describe "checking player hp", :type => :feature do

   it "show us play 2's health" do
   sign_in_and_play
   click_button "Player_2_health"
   expect(page).to have_content("Tom's health is 80")
  end
end

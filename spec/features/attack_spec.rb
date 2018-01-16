describe "Attack player", :type => :feature do

   it "attacks player 2" do
   sign_in_and_play
   click_button "Hit Player 2"
   expect(page).to have_content("Tom has been hit")
  end
end

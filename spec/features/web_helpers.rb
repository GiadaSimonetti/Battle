def sign_in_and_play
  visit "/"
  fill_in "player_1", :with => "Giada"
  fill_in "player_2", :with => "Tom"
  click_button "Submit"
end
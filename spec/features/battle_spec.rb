feature "web page content" do
  scenario "it Welcomes to the battle" do
    visit "/"
    expect(page).to have_content("Welcome to the battle")
  end
end

feature "submitting player names" do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Giada Player 2: Tom")
  end
end

feature "checking player hp" do
  scenario "show us play 2's HP" do
    sign_in_and_play
    expect(page).to have_content("Tom's HP is 80")
  end
end

feature "Attack player" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Hit Player 2"
    expect(page).to have_content("Giada attacks Tom")
  end
end

feature "Player_1 to start winning a game" do
  scenario "Reduce Player_2's HP" do
    sign_in_and_play
    click_button "Hit Player 2"
    expect(page).to have_content("Tom's HP is 70")
  end
end

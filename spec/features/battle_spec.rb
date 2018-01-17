feature "web page content", :type => :feature do
  scenario "it Welcomes to the battle" do
    visit "/"
    expect(page).to have_content("Welcome to the battle")
  end
end

feature "submitting player names", :type => :feature do
  scenario "Players enter their names" do
    sign_in_and_play
    expect(page).to have_content("Player 1: Giada Player 2: Tom")
  end
end

feature "checking player hp", :type => :feature do
  scenario "show us play 2's health" do
    sign_in_and_play
    expect(page).to have_content("Tom's health is 80")
  end
end

feature "Attack player", :type => :feature do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Hit Player 2"
    expect(page).to have_content("Giada attacks Tom")
  end
end

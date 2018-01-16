describe "web page content", :type => :feature do
  it "should have Testing infrastructure working!" do
    visit "/"
    expect(page).to have_content("Testing infrastructure working!")
  end
end

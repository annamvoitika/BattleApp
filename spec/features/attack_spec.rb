feature "Attack a player" do
  scenario "attack a player and get confirmation" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end 
end

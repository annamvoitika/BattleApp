feature "Attack a player" do
  scenario "attack a player and get confirmation" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario "reduce player 2 HP by 10 points" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end

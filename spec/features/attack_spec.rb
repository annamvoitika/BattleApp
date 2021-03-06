feature "Attack a player" do
  scenario "attack a player and get confirmation" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario "reduce player 2 HP by 10 points" do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario 'be attacked by player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_button "OK"
    click_link 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'reduce player 1 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Dave: 60HP'
    expect(page).to have_content 'Dave: 50HP'
  end 
end

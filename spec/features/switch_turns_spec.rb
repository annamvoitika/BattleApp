feature 'switch turns' do
  scenario 'users can see the current turn' do
    sign_in_and_play
    expect(page).to have_content "Dave's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_on 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content "Mittens's turn"
  end
end

feature 'Show hit points of player 2' do
  scenario 'player 1 can see hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content "Mittens: 60HP"
  end
end

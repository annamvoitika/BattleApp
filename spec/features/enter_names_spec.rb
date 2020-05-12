feature 'Enter names' do
  scenario 'users submit player names through the form' do
    visit ('/')
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

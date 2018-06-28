feature 'Enter player names' do
  scenario 'players can enter their names and see their names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Kees and Yvonne start the battle'
  end
end

feature 'View hits points' do
  scenario 'see Player2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Yvonne: 60HP'
  end
end

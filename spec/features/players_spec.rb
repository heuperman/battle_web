feature 'Enter player names' do
  scenario 'players can enter their names and see their names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Kees vs. Yvonne'
  end
end

feature 'View hits points' do
  scenario 'see hit points of player 2' do
    sign_in_and_play
    expect(page).to have_content 'Yvonne: 60HP'
  end
end

feature 'Attacking player 2' do
  scenario 'receive confirmation after attack' do
    sign_in_and_play
    click_button('Attack Yvonne')
    expect(page).to have_content 'You attacked Yvonne!'
  end
end

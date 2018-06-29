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
  scenario 'see hit points for player 1' do
    sign_in_and_play
    expect(page).to have_content 'Kees: 60HP'
  end
end

feature 'Attacking player 2' do
  scenario 'receive confirmation after attack' do
    sign_in_and_play
    click_button('Attack Yvonne')
    expect(page).to have_content 'You attacked Yvonne!'
  end
  scenario 'reduce hitpoints of attacked player by 10' do
    sign_in_and_play
    attack_player_2
    expect(page).to have_content 'Yvonne: 50HP'
  end
end

feature 'Attacking player 1' do
  scenario 'receive confirmation after attack' do
    sign_in_and_play
    attack_player_2
    click_button('Attack Kees')
    expect(page).to have_content 'You attacked Kees!'
  end
  scenario 'reduce hitpoints of attacked player by 10' do
    sign_in_and_play
    attack_player_2
    attack_player_1
    expect(page).to have_content 'Kees: 50HP'
  end
end

feature 'Switching turns' do
  scenario 'switching turns after each attack' do
    sign_in_and_play
    click_button('Attack Yvonne')
    click_button('ok')
    expect(page).to have_content "Yvonne's turn"
  end
end

feature 'Game over' do
  scenario 'shows message when HP is reduced to 0' do
    sign_in_and_play
    5.times do
      attack_player_2
      attack_player_1
    end
    attack_player_2
    expect(page).to have_content 'Game over: Kees is victorious!'
  end
end

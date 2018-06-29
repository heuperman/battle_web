def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Kees'
  fill_in :player2, with: 'Yvonne'
  click_button 'Submit'
end

def attack_player_2
  click_button('Attack Yvonne')
  click_button('ok')
end

def attack_player_1
  click_button('Attack Kees')
  click_button('ok')
end

def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Kees'
  fill_in :player2, with: 'Yvonne'
  click_button 'Submit'
end

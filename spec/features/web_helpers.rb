def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Henry'
  fill_in 'player_2', with: 'Hoover'
  click_on 'Submit'
end

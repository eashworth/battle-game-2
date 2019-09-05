feature 'Attacking opponent' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'Henry attacked Hoover'
  end
end

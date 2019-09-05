feature 'Attacking opponent' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'Henry attacked Hoover'
  end
  scenario "Reduce Player 2's health points by 10" do
    sign_in_and_play
    click_on 'Attack'
    click_on 'OK'
    expect(page).to have_content 'Hoover has 90 hp'
  end
end

feature 'input player names' do
  scenario 'it shows player 1 vs. player 2' do
    visit '/'
    fill_in 'player_1', with: 'Henry'
    fill_in 'player_2', with: 'Hoover'
    click_on 'Submit'
    expect(page).to have_content 'Henry vs. Hoover'
  end
end

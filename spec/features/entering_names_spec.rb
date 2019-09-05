feature 'input player names' do
  scenario 'it shows player 1 vs. player 2' do
    sign_in_and_play()
    expect(page).to have_content 'Henry vs. Hoover'
  end
end

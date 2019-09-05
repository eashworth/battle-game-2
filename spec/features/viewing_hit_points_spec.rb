feature 'View hit points' do
  scenario "during play, player 2's hit points are visible" do
    visit '/'
    fill_in :player_1, with: 'Henry'
    fill_in :player_2, with: 'Hoover'
    click_on 'Submit'
    expect(page).to have_content 'Hoover has 20 hit points'
  end
end

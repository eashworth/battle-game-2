feature 'View hit points' do
  scenario "during play, player 2's hit points are visible" do
    sign_in_and_play()
    expect(page).to have_content 'Hoover has 20 hit points'
  end
end

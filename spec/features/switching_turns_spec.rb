feature 'switching turns' do
  scenario 'when attacked, the victim becomes the aggressor' do
    sign_in_and_play
    click_on 'Attack'
    click_on 'OK'
    click_on 'Attack'
    click_on 'OK'
    expect(page).to have_content 'Henry has 90 hp'
  end
end

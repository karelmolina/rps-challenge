

feature 'playing the game RPS ' do

  before do
    fill_and_play
  end

  scenario 'page have rock paper scissors links' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player choose a option' do
    click_button 'Rock'
    expect(page).to have_content 'You choose Rock !!'
  end

  scenario 'the opponent exist' do

  end
end



feature 'playing the game RPS ' do

  before do
    fill_and_play
  end

  scenario 'page have rock paper scissors links' do
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'player choose a option' do
    click_button 'rock'
    expect(page).to have_content 'You choose rock !!'
  end
end

feature 'Winning or losing the Game' do

end

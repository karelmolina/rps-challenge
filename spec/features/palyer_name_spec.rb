
require 'player'

feature 'get name of the player' do
  scenario 'page show player name' do
    fill_and_play
    expect(page).to have_content('Karel')
  end
end

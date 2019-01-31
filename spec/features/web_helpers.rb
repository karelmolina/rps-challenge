def fill_and_play
		visit('/')
		fill_in 'player_name', with: 'Karel'
		click_on 'submit'
end

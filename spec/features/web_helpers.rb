def fill_and_play
		visit('/')
		fill_in 'name', with: 'Karel'
		click_on 'submit'
end

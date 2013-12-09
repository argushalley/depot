include ApplicationHelper

def login(user, options={})
	if options[:no_capybara]
		# Log in when not using Capybara.
		session[:user_id] = user.id
	else
		visit login_path
		fill_in "Name", with: user.name
		fill_in "Password", with: user.password
		click_button "Login"
	end
end
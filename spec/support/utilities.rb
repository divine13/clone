include  ApplicationHelper

#this is better testing than the one that i am currently using 

# def full_title(page_title)
# 	base_title = "Happe"
# 	if page_title.empty?
# 		base_title
# 	else
# 		"#{base_title} | #{page_title}"
# 	end
# end
def sign_in(user)

	visit signin_path

	fill_in "Email", with: user.email
	fill_in "Password", with: user.password

	click_button "Sign In"

	cookies[:remember_token] = user.remember_token
end
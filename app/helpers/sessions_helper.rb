module SessionsHelper
	def sign_in(user)
		session[:session_token] = user.id
		self.current_user = user
	end
	
	def current_user=(user)
		@current_user = user
	end
	
	def current_user
		@current_user ||= SchoolUser.find_by(id: [:session_token])
	end
end

class SessionsController < ApplicationController
	
	def new
	end
	
	def create
		user = SchoolUser.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			if user.isTeacher?
				redirect_to teacher
			elsif user.isStudent?
				redirect_to student
		else
			render 'new'
		end
	end
end

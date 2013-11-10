class AuthenticationPageController < ApplicationController
	
	def home
		render 'home'
	end
	
	def signIn
		user = SchoolUsers.find_by(:email params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			#Set this user as the current user
			if user.isATeacher?
				#We know it is a teacher so redirect to the teacher dashboard
			elsif user.isAStudent?
				#We know it is a student so redirect to the student dashboard
			else
				render 'home'
			end
		else
			render 'home'
		end
	end
end

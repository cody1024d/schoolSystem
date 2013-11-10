class SessionController < ApplicationController
	
	def new
		render 'new'
	end
	
	def create
		user = SchoolUser.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			#Set this user as the current user
			#How do I redirect properly?  Just to TeacherDashboard#home?
			if user.isATeacher?
				#We know it is a teacher so redirect to the teacher dashboard
			elsif user.isAStudent?
				#We know it is a student so redirect to the student dashboard
			else
				render 'new'
			end
		else
			render 'new'
		end
	end
end

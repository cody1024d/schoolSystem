class SessionsController < ApplicationController
	skip_before_filter :require_login
	def new
	end
	
	def create
		user = SchoolUser.find_by(email: params[:sessions][:email])
		if user && user.authenticate(params[:sessions][:password])
			sign_in user
			redirect_to user
		else
			render 'new'
		end
	end
	
	def destroy
		sign_out
		redirect_to root_path
	end
end

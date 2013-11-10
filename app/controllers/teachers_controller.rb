class TeachersController < ApplicationController
  def show
  	  #TODO -- Need to user the current user (who logged in) and pass that in
  	  render 'show'
  end
end

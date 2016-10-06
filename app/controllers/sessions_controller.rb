class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: session_params['email'])
  	if user && user.authenticate(session_params['password'])
  		session[:user_id] = user.id
  		redirect_to boot_path(user)
  	else
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	render 'welcomes#index'
  end
  private
  def session_params
  	params.require(:session).permit(:email, :password)
  end
end

class SessionsController < ApplicationController
  def new
  end

  def create
  	@boot = Boot.find_by(email: session_params[:email])
  	if @boot && @boot.authenticate(session_params[:password])
  		session[:id] = @boot.id
  		redirect_to boot_path(@boot)
  	else
      @errors = ["Invalid login"]
  		render 'new'
  	end
  end

  def destroy
  	session[:id] = nil
  	render 'welcomes#index'
  end
  
  private
  def session_params
  	params.require(:session).permit(:email, :password)
  end
end

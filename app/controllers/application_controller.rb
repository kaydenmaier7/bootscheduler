class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :login, :logout, :errors

  def current_user
    @current_user ||= Boot.find(session[:id]) if session[:id]
  end

  def logged_in?
    !!current_user
  end

  def login(boot)
    session[:id] = @boot.id
  end

  def logout
    session[:id] = nil
  end

  def errors(item)
    @errors = item.errors.full_messages
  end
end

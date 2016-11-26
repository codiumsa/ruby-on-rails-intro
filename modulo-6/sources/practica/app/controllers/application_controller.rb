class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_login

  helper_method :logged_in?, :current_user

  protected
  def logged_in?
    session[:user_id] # nil is false
  end

  def ensure_login
    # Always go to login page unless session contains
    # reviewer_id
    redirect_to login_path unless session[:user_id]
  end

  def current_user
    begin
      @current_user ||= User.find(session[:user_id])
    rescue Exception => e
      reset_session
    end
  end
end

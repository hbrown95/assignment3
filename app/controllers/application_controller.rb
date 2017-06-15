class ApplicationController < ActionController::Base
	before_action :authorize
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
  	unless User.find_by(id: session[:user_id])
    	redirect_to '/login' unless current_user
    end
  end
end

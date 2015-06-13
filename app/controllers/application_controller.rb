class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

  	# define the helper method 'curent_user'
  	def current_user
   		@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end
 	helper_method :current_user

 	# call action to verify current user has access to that page
 	def authorize
   		redirect_to '/login' unless current_user
 	end
end

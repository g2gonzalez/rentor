class SessionsController < ApplicationController
	def index
  	end

  	def new
  	end

  	def create
    		user = User.find_by_email(params[:email])
	    	# If the user exists AND the password entered is correct.
	    	if user && user.authenticate(params[:password])
	    		# Save the user id and is admin inside the browser cookie. This is how we keep
      		# the user logged in when they navigate around our website.
      		session[:user_id] = user.id
      		session[:is_admin] = user.is_admin
			session[:location_id] = user.location_id

      		redirect_to '/home', notice: "You've successfully logged in."
	    	else
	    		# If user's login doesn't work, send them back to the login form.
	      	redirect_to '/login', notice: "That information was correct. Try logging in again."
	    	end
	end

	def destroy
		session[:user_id] = nil
	    	redirect_to '/', notice: "You've successfully logged out."
	end
end

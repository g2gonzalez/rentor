class HomeController < ApplicationController

 	def index
 		# check to see if it's an admin or not and display appropriate message
     		if session[:is_admin] == true
           		@location = Location.new
           		@user = User.find(session[:user_id])
           		@users = User.all
    		else
      		@user = User.find(session[:user_id])
            	user_location = Location.find(session[:location_id])
            	@landlord = User.find(user_location.user_id)
        	end
  	end
end

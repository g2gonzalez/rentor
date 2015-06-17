class HomeController < ApplicationController

 	def index
 		# check to see if it's an admin or not and display appropriate message
     		if session[:is_admin] == true
       		@message = "Welcome Admin"
           @locations = Location.all
    		else
      		@message = "Welcome User"
    		end
  	end
end

=begin

locations:
apt_name | address | city | state | zip

bills:
apt_name | amount | due date

=end

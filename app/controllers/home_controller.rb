class HomeController < ApplicationController

 	def index
 		# check to see if it's an admin or not and display appropriate message
     		if session[:is_admin] == true
       		@message = "Welcome Admin"
       		@locations = Location.all
           		@location = Location.new
          # tenant_location = @locations.each do |loc|
          #   loc_id_join = loc.id
          #   @tenant_name = User.find(loc_id_join.location_id)
          # end
    		else
      			@message = "Welcome User"
            user_location = Location.find(session[:location_id])
            @landlord = User.find(user_location.user_id)
        end
  	end
end

=begin

locations:
apt_name | address | city | state | zip

bills:
apt_name | amount | due date

=end

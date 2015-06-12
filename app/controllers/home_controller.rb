class HomeController < ApplicationController
	def index
    if session[:is_admin] == true
      @message = "Welcome Admin"
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




class HomeController < ApplicationController

	def index
    if session[:is_admin] == true
      @message = "Welcome Admin"
    else
      @message = "Welcome User"
    end
	end

end
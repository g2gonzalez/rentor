class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			session[:is_admin] = @user.is_admin
			session[:location_id] = @user.location_id

			redirect_to '/home', notice: "Your account was successfully created."
		else
			render :new
		end
	end

	private
		def user_params
			#add is_admin to hash without showing it in the view
			modified_hash = params[:user]
			modified_hash[:is_admin] = "false"
			modified_hash.permit(:name, :email, :is_admin, :password, :password_confirmation, :location_id)
		end
end

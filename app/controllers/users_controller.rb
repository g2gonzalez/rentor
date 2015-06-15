class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = user.id
			redirect_to '/home'
		else
			render :new
		end
	end

	private
		def user_params
			#add is_admin to hash without showing it in the view
			modified_hash = params[:user]
			modified_hash[:is_admin] = "false"
			modified_hash.permit(:name, :email, :is_admin, :password, :password_confirmation)
		end
end

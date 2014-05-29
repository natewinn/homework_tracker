class UsersController < ApplicationController
		before_filter :authenticate_user!

	def index
		@users = User.all
	end

	def new
		@new_user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@new_user = User.new()
		if @new_user.save
			redirect to users_path
		else
			redirect_to new_user_path
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_path
		else
			redirect_to edit_user_path
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
			redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :avatar)
	end
	
end
         
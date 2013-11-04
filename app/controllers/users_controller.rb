class UsersController < ApplicationController
	def new
	end

	def index
		@users=User.all
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to @user
	end

	def show
	  @user = User.find(params[:id])
	end

	private
	 def user_params
	 params.require(:user).permit(:name, :email, :story, :type, :tweetable, :avatar, :nickname)
	 end

end

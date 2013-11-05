class UsersController < ApplicationController
	def new
	end

	def index
		@users=User.all
	end

	def create
		@user = User.new(user_params)
		if @user.save
		  # Deliver the signup email
	      Notifier.send_signup_email(@user).deliver
	      redirect_to @user
	    else
	      render :action => 'new'
	    end
	end

	def show
	  @user = User.find(params[:id])
	end

	private
	 def user_params
	 params.require(:user).permit(:name, :email, :story, :type, :tweetable, :avatar, :nickname)
	 end

end

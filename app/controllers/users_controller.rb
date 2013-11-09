class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def index
		@users=User.all
	end

	def create
		@user = User.new(user_params)
		if @user.save
		  @user.approval='n'
		  # Deliver the signup email
	      Notifier.send_signup_email(@user).deliver
	      Notifier.send_alert_email(@user).deliver
	      flash[:notice] = "Awesome.  Your story has been submitted"
	      redirect_to @user
	    else
	      render :action => 'new'
	    end
	end

	def edit
		@user = User.find(params[:id])
		
	end
		

	def show
	  @user = User.find(params[:id])
	  
	  
	end

	def alltips
		@user = User.first
		# send contact info to infusionsoft
		Infusionsoft.contact_add({:FirstName => @user.name,  :Email => @user.email })
		redirect_to("/thankyou")
	end

	private
	 def user_params
	 params.require(:user).permit(:name, :email, :story, :approval, :type, :tweetable, :avatar, :nickname)
	 end

end

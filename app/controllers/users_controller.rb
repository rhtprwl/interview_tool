class UsersController < ApplicationController
	def new
     @user=User.new
  logger.debug "1111111111111111111111111111111111"
    end

    def create
    	@user = User.new(user_params)   
      logger.debug "1111111111111111111111111111111111"
    	logger.debug user_params
      logger.debug "22222222222222222222222222"
      if @user.save
    		 #redirect_to @user
      		flash[:success] = "User created"
      	 redirect_to users_dashboard_path
          #render :action 'dashboard'
   		else
      		render 'new'
    	end
    end

    def update
	    @user = User.find(params[:id])
	    if @user.update_attributes(user_params)
	       flash[:success] = "Profile updated"
	       redirect_to @user
	      # Handle a successful update.
	    else
	      render 'edit'
	    end
	  end

	  def dashboard
    #  @user = User.all
		 #@user = User.find(params[:id])
	  end

	  private

    def user_params
      params.require(:user).permit(:name, :role, :email,:password,:password_confirmation)
    end
end

class UserController < ApplicationController
	def new
     @user=User.all
 
    end

    def create
    
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
end

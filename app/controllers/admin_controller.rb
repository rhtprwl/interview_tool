class AdminController < ApplicationController
  
  def dashboard
   
  end

  def users_new
  end

  def create
   @user = User.new(user_params) 
   logger.debug user_params   
     if @user.save
      #redirect_to @user
        flash[:success] = "New User Successfully Added!!!"
        redirect_to admin_dashboard_path
     else
        redirect_to 'admin_users_new'
     end
  end
  
  def users
   @user=User.all
  end
  
  private

    def user_params
  	  params.require(:user).permit(:name, :role, :email,:password,:password_confirmation)
    end

end
class AdminController < ApplicationController
  before_action :require_login
 
  def dashboard

   
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
  	  params.require(:user).permit(:name, :role, :category, :email,:password,:password_confirmation)
    end
   
    def require_login
      unless signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to login_path # halts request cycle
      end
    end
end
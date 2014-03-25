class AdminController < ApplicationController
    before_action :require_login

    def users_new
      @user = User.new 
    end

    def dashboard

    end

    def edit
      @user = User.find(params[:id])
      logger.debug @user
      logger.debug "in edit function"
    end

    def create
      @user = User.new(user_params) 
      logger.debug "lkkkkkkkkkkkkkkkkklkkkkkkkkk"
      logger.debug user_params   
      if @user.save
        flash[:success] = "New User Successfully Added!!!"
        redirect_to admin_users_path
      else
        logger.debug "qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"
        render 'users_new'
      end
    end

    def update
      logger.debug "in Update function"
      @user = User.find(params[:id])
      @user.name=params["user"]["name"]
      @user.email=params["user"]["email"]
      @user.role=params["user"]["role"]
      @user.category=params["user"]["category"]
      if @user.save
        flash[:success] = "Profile updated"
        redirect_to admin_users_path

      else
        render 'edit'
      end
    end

    def users
      if params[:search].nil?
        logger.debug "111111"
        @admin = User.paginate(page: params[:page],:per_page => 10)
      else
        logger.debug "22222"
        @search = User.search do
          #logger.debug params[:search] 
          fulltext params[:search] 
        end
        @admin = @search.results
      end
      

      respond_to do |format|
        format.html
        format.js
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path
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
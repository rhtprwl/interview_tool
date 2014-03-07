class CategoryController < ApplicationController
  before_action :require_login
  
	def new
		@category=Category.new
	end

	def create
		@category = Category.new(user_params)   
      	logger.debug "11111111"
    	logger.debug user_params
      	logger.debug "22222222"
      	if @category.save
    		 #redirect_to @user
    		 logger.debug "3333333333"
      		flash[:success] = "new category added"
      	  	redirect_to admin_dashboard_path
          #render :action 'dashboard'
   		else
      		render 'new'
    	end
	end
 def show

       @category=Category.all

  end



	private

		def user_params
  	  		params.require(:category).permit(:category_name)
    end

    def require_login
      unless signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to login_path # halts request cycle
      end
    end

end

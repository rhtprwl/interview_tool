class SubcategoryController < ApplicationController

  before_action :require_login

	def new
		@subcategory=Subcategory.new
	end

	def create
		@subcategory = Subcategory.new(user_params)   
      	logger.debug "in subcategory....."
    	logger.debug user_params
      	logger.debug "params of subcategory"
      	if @subcategory.save
    		 #redirect_to @user
    		 logger.debug "subcategory createddd"
      		flash[:success] = "new subcategory added"
      	  	redirect_to admin_dashboard_path
          #render :action 'dashboard'
   		else
      		render 'new'
    	end
	end

	private

		def user_params
  	  		params.require(:subcategory).permit(:category_id, :subcategory_name)
    	end


    def require_login
      unless signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to login_path # halts request cycle
      end
    end
    
end

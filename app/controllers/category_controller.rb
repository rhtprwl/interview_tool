class CategoryController < ApplicationController
	def new
		@category=Category.new
	end

	def create
		@category = Category.new(user_params)   
      	logger.debug "1111111111111111111111111111111111"
    	logger.debug user_params
      	logger.debug "22222222222222222222222222"
      	if @category.save
    		 #redirect_to @user
    		 logger.debug "33333333333333333333"
      		flash[:success] = "new category added"
      	  	redirect_to admin_dashboard_path
          #render :action 'dashboard'
   		else
      		render 'new'
    	end
	end

	private

		def user_params
  	  		params.require(:category).permit(:category_name)
    	end
end

class SubcategoryController < ApplicationController
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
end

class SubcategoryController < ApplicationController

  before_action :require_login

	def new
		@subcategory=Subcategory.new
	end

	def create
		@subcategory = Subcategory.new(user_params)
      	logger.debug @subcategory.parent
        if @subcategory.parent==""
      	     @subcategory.parent="root"
              logger.debug "1111111111111111111111111111111111"
              logger.debug @subcategory.parent
              logger.debug "22222222222222222222222222222222222222222222"
        else
        end
        
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
  
  def show
       @subcategory=Subcategory.all
  end
	

  private

	  	def user_params
  	  		params.require(:subcategory).permit(:parent, :subcategory_name)
    	end


      def require_login
        unless signed_in?
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path # halts request cycle
        end
      end
    
end

class SubcategoryController < ApplicationController

  before_action :require_login

	def new
		@subcategory=Subcategory.new
	end
 
  def edit
    @subcategory = Subcategory.find(params[:id])
  end

	def create
		@subcategory = Subcategory.new(user_params)
      	logger.debug "IN Creaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaate"
        if @subcategory.parent==""  ||  @subcategory.parent=="root" 
           @subcategory.parent="root"
             
        else
        end
        
        if @subcategory.save
    		 	   flash[:success] = "new subcategory added"
      	  	 redirect_to admin_dashboard_path
         else
      	    render 'new'
    	 end
	end
  
  def show
       @subcategory=Subcategory.all
  end

  def destroy
       @subcategory = Subcategory.find(params[:id])
       @sub = Subcategory.where(:parent =>@subcategory.subcategory_name)
       @subcategory.destroy
       @sub.each do |u| 
       u.destroy
       end
       redirect_to subcategory_path 
  end
	
  def update
      logger.debug "in Update function"
       @subcategory = Subcategory.find(params[:id])
       if @subcategory.parent=="" ||  @subcategory.parent=="root"
             @subcategory.parent="root"
        else
        end
       if @subcategory.update_attributes(user_params)
        flash[:success] = "Profile updated"
        redirect_to subcategory_path

       else
         #render 'edit'
       end
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

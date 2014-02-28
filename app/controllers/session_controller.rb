class SessionController < ApplicationController
	def new
	end

	def create
		      user = User.find_by(name: params[:session][:name].downcase)
		      #logger.debug user.name
          if user  && user.authenticate(params[:session][:password])
           logger.debug user.name
           logger.debug "user matched with the database"
           sign_in user
           redirect_to admin_show_path

          #elsif user!
             

          else
           logger.debug "it contains some errors"
           flash.now[:error] = 'Invalid email/password combination'
           #flash[:error] = 'Invalid email/password combination'
           render 'new'
          end
	end

	def destroy
    
		   sign_out
       logger.debug "22222222"
       redirect_to static_page_home_url
	end
end

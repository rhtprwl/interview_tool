class SessionController < ApplicationController
	def new
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		 
          if user# && user.authenticate(params[:session][:password])
           logger.debug "checked"
           sign_in user
           redirect_to static_page_home_url

          else
           logger.debug "errrrrrrrrrroooooorrrrrrrs"
           flash.now[:error] = 'Invalid email/password combination'
           render 'new'
          end
	end

	def destroy
		   sign_out
           logger.debug "22222222"
           redirect_to static_page_home_url
	end
end

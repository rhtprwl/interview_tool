class SessionController < ApplicationController
	def new
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		 logger.debug params
          if user #&& user.authenticate(params[:session][:password])
            logger.debug "checked"
           sign_in user
           redirect_to root_url

          else
          	 logger.debug "errrrrrrrrrroooooorrrrrrrs"
           flash.now[:error] = 'Invalid email/password combination'
           render 'new'
          end
	end

	def destroy
	end
end

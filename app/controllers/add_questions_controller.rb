class AddQuestionsController < ApplicationController
	before_action :require_login

  def new
		@add_question=AddQuestion.new
	end

	def create
		@add_question = AddQuestion.new(user_params)   
      	logger.debug "Creating Questions....."
    	logger.debug user_params
      	logger.debug "params of adding_questions"
      	if @add_question.save
    		 #redirect_to @user
    		 logger.debug "question added"
      		flash[:success] = "new question added"
      	  	redirect_to admin_dashboard_path
          #render :action 'dashboard'
   		else
      		render 'new'
    	end
	end

	private

		def user_params
  	  		params.require(:add_questions).permit(:category_id, :subcategory_id, :question_level, :question, :option1, :option2, :option3, :option4, :answer)
    end

    	def require_login
      		unless signed_in?
        	flash[:error] = "You must be logged in to access this section"
        	redirect_to login_path # halts request cycle
      		end
    	end
end

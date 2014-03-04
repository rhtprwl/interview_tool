class AddQuestionsController < ApplicationController
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
  	  		params.require(:add_questions).permit(:category_id, :subcategory_id, :question_level, :question)
    	end
end

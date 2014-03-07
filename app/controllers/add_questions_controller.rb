class AddQuestionsController < ApplicationController
 before_action :require_login

  def new

  @add_questions=AddQuestion.new
 end

 def create
    logger.debug "Creating11111111111111111111111111111111....."
  @add_questions = AddQuestion.new(user_params)   
       logger.debug "Creating Questions....."

     logger.debug user_params
       logger.debug "params of adding_questions"
       if @add_questions.save
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
       params.require(:add_question).permit(:category_id, :subcategory_id, :question_level, :question, :option1, :option2, :option3, :option4, :answer)
    end

     def require_login
        unless signed_in?
         flash[:error] = "You must be logged in to access this section"
         redirect_to login_path # halts request cycle
        end
     end
end

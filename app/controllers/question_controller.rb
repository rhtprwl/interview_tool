class QuestionController < ApplicationController
	before_action :require_login
   def new
     
     @question=Question.new

	 end

   def create
        logger.debug "Creating11111111111111111111111111111111....."
        @question = Question.new(user_params)   
        logger.debug "Creating Questions....."
        logger.debug user_params
        logger.debug "params of adding_questions"
        if @question.save
           logger.debug "question added"
           flash[:success] = "new question added"
           redirect_to question_path($foo.id)
          else
          render 'new'
        end
    end
  
    def edit
      @question=Question.find(params[:id])
    end
    
    def update 
      @question =Question.find(params[:id])
       if @question.update_attributes(user_params)
        flash[:success] = "question updated"
        redirect_to question_path($foo.id)

       else
         render 'edit'
       end
    end
    
    def destroy
       @question= Question.find(params[:id])
       @question.destroy
       redirect_to question_path($foo.id)
    end


    def show
       $foo=Category.find(params[:id])
       logger.debug "________________________________________________________"
       logger.debug $foo
       logger.debug "________________________________________________________"
       
       @question=Question.where(:subcategory_id => params[:id])
    end


 private

  def user_params
       params.require(:question).permit(:category, :subcategory_id, :question_level, :question, :option1, :option2, :option3, :option4, :answer)
    end

     def require_login
      
        unless signed_in?
         flash[:error] = "You must be logged in to access this section"
         redirect_to login_path # halts request cycle
        end
     end
    
end

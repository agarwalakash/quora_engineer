class QuestionsController < ApplicationController
  def new
  	@question = Question.new
  	@topics = current_user.topics
  end

  def index
    @questions = current_user.questions
  end

  def create
  	@question = current_user.questions.create(question_params)
    @question.topic_id = params[:question][:topic_id]
    @question.save
    redirect_to questions_path
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def question_params
    params.require(:question).permit(:content)
  end
end

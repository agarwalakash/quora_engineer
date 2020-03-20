class QuestionsController < ApplicationController
  def new
  	@question = Question.new
  	@topics = Topic.all
  end

  def index
    @questions = current_user.questions
  end

  def create
  	@question = Question.create(content: params[:question][:content], user_id: current_user.id, topic_id: params[:question][:topic])
    redirect_to questions_path
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end
end

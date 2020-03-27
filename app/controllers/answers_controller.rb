class AnswersController < ApplicationController
  def index
  end

  def create
    @answer = current_user.answers.create(answer_params)
    @answer.question_id = params[:answer][:question_id]
  	if @answer.save!
  		redirect_to question_path(params[:answer][:question_id])
  	end
  end

  def show
  end

  def new
  end

  def answer_params
    params.require(:answer).permit(:content)
  end
end

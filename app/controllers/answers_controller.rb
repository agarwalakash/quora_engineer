class AnswersController < ApplicationController
  def index
  end

  def create
  	@answer = Answer.create(content: params[:answer][:content], user_id: current_user.id, question_id: params[:answer][:question_id])
  	if @answer.save!
  		redirect_to question_path(params[:answer][:question_id])
  	end
  end

  def show
  end

  def new
  end
end

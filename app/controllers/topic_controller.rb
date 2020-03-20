class TopicController < ApplicationController
  def create
  	@topic = Topic.create(name: params[:topic][:name], user_id: current_user.id)
  	if @topic.save!
  		redirect_to topic_index_path
  	end
  end

  def show
  end

  def index
  	@topics = current_user.topics
  end

  def new
  	@topic = Topic.new
  end

  private

  # def topic_params
  # 	params.require(:topic).permit(:name)
  # end
end

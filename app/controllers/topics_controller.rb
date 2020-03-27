class TopicsController < ApplicationController
  def create
  	@topic = current_user.topics.create(topic_params)
  	if @topic.save!
  		redirect_to topics_path
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

  def topic_params
  	params.require(:topic).permit(:name)
  end
end

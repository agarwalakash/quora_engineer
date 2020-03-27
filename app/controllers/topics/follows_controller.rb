class Topics::FollowsController < FollowsController
before_action :set_followable

private

def set_followable
	@followable = Topic.find(params[:topic_id])
end

end

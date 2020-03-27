class Questions::FollowsController < FollowsController
before_action :set_followable

private

def set_followable
	q = Question.find(params[:question_id])
	@followable = q.user
end

end

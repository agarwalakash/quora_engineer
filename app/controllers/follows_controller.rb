class FollowsController < ApplicationController
	before_action :authenticate_user!

  def index
  	@followers = User.where(id: current_user.follows.map{|f| f.user_id})
  end

  def show
  end

  def create
  	if @followable.follows.exists?(user_id: current_user.id)
  		flash[:alert] = "You are already following #{@followable.class.name}"
  	else
  	@follow = @followable.follows.create
  	@follow.user_id = current_user.id
  	@follow.save
  end
  	redirect_back(fallback_location: root_path)
  end

  def new
  	
  end
end

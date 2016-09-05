class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    us_user = User.find(params[:relationship][:followed_id])
    current_user.follow!(us_user)

    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end

  def destroy
    us_user = Relationship.find(params[:id]).followed
    current_user.unfollow!(us_user)
  
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end
  
end

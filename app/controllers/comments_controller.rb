class CommentsController < ApplicationController


  def create
      @comment = current_user.comments.build(comment_params)    
      @comment.save 
     
    respond_to do |format|
      format.html {redirect_to :back}
      format.js {}
    end
  end

  def destroy   
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html {redirect_to :back}
      format.js {}
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:description, :post_id, :user_id)

  end
end
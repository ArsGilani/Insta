class MarksController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
		@mark = Mark.new
	end
	def create
		@post = Post.find(params[:post_id])
		@mark = @post.marks.build(mark_params)

		respond_to do |format|
		if @mark.save 
			format.html { redirect_to :back}
			
			else
				
			format.html { render :new }
			end
		end		
	end
	
 
	def destroy   
		@mark = Mark.find_by(id: params[:id],post_id:params[:post_id])
		@mark.destroy

		respond_to do |format|
		format.html {redirect_to :back}
		format.js {}
		end
	end

  private
   

    def mark_params
      params.require(:mark).permit(:user, :like)
    end
	

end

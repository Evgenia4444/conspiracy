class CommenttsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@commentt = @post.commentts.create(params[:commentt].permit(:body).merge(user_id: current_user.id))
		redirect_to post_path(@post)
	end
end
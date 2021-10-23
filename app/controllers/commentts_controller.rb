class CommenttsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@commentt = @post.commentts.create(params[:commentt].permit(:commenter, :body))
		redirect_to post_path(@post)
	end
end
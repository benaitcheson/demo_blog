class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment]).permit(:name, :comment)
    redirect_to posts_path(@post)
  end

  def destroy

  end
end

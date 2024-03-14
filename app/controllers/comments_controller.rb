class CommentsController < ApplicationController
  def index
    @comments = Comment.All
  end

  def create
    @post = Post.find(params[:post_id])

    @comment = Comment.new(comment_params)
    @comment.post = @post


    @comment.save
    redirect_to posts_path

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end

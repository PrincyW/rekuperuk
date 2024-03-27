class PostsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = Post.all.order(created_at: :desc)
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def post_params
    params.require(:post).permit(:title, :description, :photo)
  end
end

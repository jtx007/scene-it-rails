class PostsController < ApplicationController
  before_action :authorized


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
    @post.save
    redirect_to user_path(@post.user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :movie_id)
  end

end

class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end

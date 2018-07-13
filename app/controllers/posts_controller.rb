class PostsController < ApplicationController
  before_action :authorized


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = session[:user_id]
    if @post.valid
      @post.save
      redirect_to post_path(@post)
    else
      puts "Failed to create post"  
    end
  end

  def show
    @post = Post.find(params[:id])
    @movie = Movie.find(@post.movie_id)
    @user = User.find(@post.user_id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :movie_id)
  end

end

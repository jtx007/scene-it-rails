class CommentsController < ApplicationController
  before_action :authorized

  # def new
  #   @comment = Comment.new
  # end

  def create

    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment].permit(:content))
    @comment.user_id = session[:user_id]
    @comment.save
    
    redirect_to post_path(@post)
  end


end

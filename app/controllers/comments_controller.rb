class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment.create()
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end

class CommentsController < ApplicationController

  def create
    @prototype = Prototype.find(params[:prototype_id])
    @comment = @prototype.comments.create(comment_params)
    @comments = @prototype.comments
    redirect_to :back
  end
  private
  def comment_params
    params.require(:comment).permit(:user_id, :prototype_id, :comment)
  end
end

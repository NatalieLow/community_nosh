class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    unless current_user
      flash[:danger] = "Oops, you gotta log in to post a comment."
      redirect_to controller: 'posts', action: 'show', id: comment_params[:post_id]
    else
      @comment = Comment.new(comment_params)
      @comment.user_id = @current_user.id
      if @comment.save
        redirect_to controller: 'posts', action: 'show', id: comment_params[:post_id]
      else
        flash[:danger] = "Uh oh, comment didn't get saved. Please try again"
        redirect_to controller: 'posts', action: 'show', id: comment_params[:post_id]
      end
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:text, :post_id, :comment_id)
  end

end

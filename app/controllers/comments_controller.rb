class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    session[:last_post_page] = request.env['HTTP_REFERER'] || root_path

    if !current_user
      flash[:danger] = "Oops, you gotta log in to post a comment."
      flash.keep(:danger)
      render js: "window.location = '#{session[:last_post_page]}'"
    else
      @comment = Comment.new(comment_params)
      @comment.user_id = @current_user.id
      if @comment.save
        render js: "window.location = '#{session[:last_post_page]}'"
      else
        flash[:danger] = "Uh oh, comment didn't get saved. Please try again"
        flash.keep(:danger)
        render js: "window.location = '#{session[:last_post_page]}'"
      end
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:text, :post_id, :comment_id)
  end

end

class StaticPagesController < ApplicationController
  def home
    logger.debug request.headers.inspect
    logger.debug response.headers.inspect
    @posts = Post.limit(4).order("random()")

  end

  def demo
  end

  def about
  end

  def contact
  end
end

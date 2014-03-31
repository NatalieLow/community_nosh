class StaticPagesController < ApplicationController
  def home
    logger.debug request.headers.inspect
    logger.debug response.headers.inspect
    @posts = Post.all.limit(4)

  end

  def demo
  end

  def about
  end

  def contact
  end
end

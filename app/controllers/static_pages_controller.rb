class StaticPagesController < ApplicationController

  def home
    @posts = Post.where.not(img_url: nil).limit(5)
  end
  #.order("random()")
  def demo
  end

  def about
  end

  def contact
  end

end

class StaticPagesController < ApplicationController

  def home
    @posts = Post.where.not(img_url: nil).limit(5).order("random()")
  end

  def demo
  end

  def about
  end

  def contact
  end

end

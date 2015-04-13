class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    unless current_user
      flash[:danger] = "Best log in first so we can keep improving the site to meet your needs."
    end

  end
end

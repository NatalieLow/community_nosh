class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :comment

  has_many :comments

  #before_create :logged_in_user
  #
  #def logged_in_user
  #  unless current_user.nil?
  #end
end

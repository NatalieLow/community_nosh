class Post < ActiveRecord::Base
  validates :url, presence: true, uniqueness: {case_sensitive: false}
  has_many :comments
  has_many :votes, as: :votable

end

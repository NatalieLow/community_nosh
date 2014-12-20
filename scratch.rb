class Comment
  belongs_to :post
  belongs_to :comment
end



def fooo
  return doo_shit if a
  doothershit
end

comment_replies = Hash.new { |h, k| h[k] = []}
@post.comments.each do |comment|
  comment_replies[comment.comment_id] << comment
end

comment_replies[nil].each do |comment|
  # display the comment
  comment_replies[comment.id].each do |reply|
    # didsplay the reply
  end
end



@post.comments.each do |comment|
  comment.comments.each do |reply|

  end
end



@post.comments.includes(:comments).each do |comment|
  comment.comments.each do |reply|

  end
end



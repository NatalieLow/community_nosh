class AddBlogNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :blog_name, :string
  end
end

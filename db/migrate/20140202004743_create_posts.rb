class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.text :html
      t.string :title
      t.string :img_url
      t.date :posted_on

      t.timestamps
    end
  end
end

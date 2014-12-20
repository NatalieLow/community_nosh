class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :user, index: true
      t.references :post, index: true
      t.integer :comment_id

      t.timestamps
    end
  end
end

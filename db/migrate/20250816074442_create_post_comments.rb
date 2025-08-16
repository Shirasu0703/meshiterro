class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments, if_not_exists: true do |t|
      t.references :post_image, null: false, foreign_key: true
        t.text :comment
        t.integer :user_id
  
        t.timestamps
    end
  end
end

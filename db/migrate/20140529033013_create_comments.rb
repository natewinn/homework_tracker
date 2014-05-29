class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :commentable_id
      t.integer :commentable_type
      t.integer :user_id

      t.timestamps
    end
  end
end

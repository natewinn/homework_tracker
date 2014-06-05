class RemoveCommentableTypeFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :commentable_type, :integer
  end
end

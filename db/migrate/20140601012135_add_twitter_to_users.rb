class AddTwitterToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :mobile_number, :string
  	add_column :users, :twitter, :string
  	add_column :users, :blog, :string  	
  end
end

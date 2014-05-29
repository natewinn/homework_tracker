class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :github
      t.string :heroku
      t.integer :user_id
      t.string :status
      t.integer :assignment_id

      t.timestamps
    end
  end
end

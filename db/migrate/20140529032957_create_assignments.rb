class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.integer :cohort_id

      t.timestamps
    end
  end
end

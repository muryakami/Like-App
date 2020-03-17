class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :employee_id, null: false
      t.integer :job_id,      null: false
      t.boolean :employee_like
      t.boolean :job_like

      t.timestamps
    end
    add_foreign_key :likes, :users, column: :employee_id
    add_foreign_key :likes, :jobs
    add_index :likes, [:employee_id, :job_id], unique: true
  end
end

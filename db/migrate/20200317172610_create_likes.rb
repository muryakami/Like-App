class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :employee_id
      t.integer :job_id
      t.boolean :employee_like
      t.boolean :job_like

      t.timestamps
    end
  end
end

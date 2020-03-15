class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :employer_id, null: false
      t.string :name,         null: false
      t.text :content,        null: false

      t.timestamps
    end
    add_foreign_key :jobs, :users, column: :employer_id
  end
end

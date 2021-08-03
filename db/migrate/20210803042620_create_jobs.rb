class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.string :company, null: false
      t.integer :employer_id, null: false, foreign_key: true
      t.integer :applicant_ids, array: true, foreign_key: true
      t.text :description, null: false
      t.string :apply_url
      t.boolean :featured, null: false
      t.string :locations, array: true, null: false
      t.boolean :remote_ok, null: false
      t.string :salary
      t.string :tenure, null: false
      t.string :specialty, null: false
      t.string :role, null: false
      t.string :tech, array: true
      t.string :industry
      t.integer :company_size

      t.timestamps
    end
    add_index :jobs, :company
    add_index :jobs, :employer_id
  end
end

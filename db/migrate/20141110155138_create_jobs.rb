class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name

      t.timestamps
    end
    
    add_column :users, :job_id, :integer
    add_index :users, :job_id
  end
end

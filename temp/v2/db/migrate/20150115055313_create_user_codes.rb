class CreateUserCodes < ActiveRecord::Migration
  def change
    create_table :user_codes do |t|
      t.integer :user_id
      t.integer :code_id

      t.timestamps
    end
  end
end

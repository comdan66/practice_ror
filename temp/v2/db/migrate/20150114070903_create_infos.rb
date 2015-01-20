class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :nickname
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end

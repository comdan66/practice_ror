class AddIsEnabledToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_enabled, :integer
  end
end

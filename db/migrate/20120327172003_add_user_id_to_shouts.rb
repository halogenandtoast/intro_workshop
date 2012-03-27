class AddUserIdToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :user_id, :integer
    add_index :shouts, :user_id
  end
end

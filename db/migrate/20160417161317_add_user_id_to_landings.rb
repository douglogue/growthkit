class AddUserIdToLandings < ActiveRecord::Migration
  def change
    add_column :landings, :user_id, :integer
    add_index :landings, :user_id
  end
end

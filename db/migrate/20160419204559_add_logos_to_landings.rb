class AddLogosToLandings < ActiveRecord::Migration
  def change
    add_column :landings, :logo_id, :string
  end
end

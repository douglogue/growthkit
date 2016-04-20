class AddIndextoLanding < ActiveRecord::Migration
  def change
    add_index :landings, :slug, unique: true
  end
end

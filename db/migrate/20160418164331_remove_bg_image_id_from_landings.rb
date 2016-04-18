class RemoveBgImageIdFromLandings < ActiveRecord::Migration
  def change
    remove_column :landings, :bg_image_id, :string
  end
end

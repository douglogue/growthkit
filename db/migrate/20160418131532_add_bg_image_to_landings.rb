class AddBgImageToLandings < ActiveRecord::Migration
  def change
    add_column :landings, :bg_image_id, :string
  end
end

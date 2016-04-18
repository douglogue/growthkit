class AddHeroImageToLandings < ActiveRecord::Migration
  def change
    add_column :landings, :hero_image_id, :string
  end
end

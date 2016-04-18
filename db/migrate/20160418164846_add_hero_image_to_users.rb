class AddHeroImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hero_image_id, :string
  end
end

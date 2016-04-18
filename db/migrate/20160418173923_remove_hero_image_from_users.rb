class RemoveHeroImageFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :hero_image_id, :string
  end
end

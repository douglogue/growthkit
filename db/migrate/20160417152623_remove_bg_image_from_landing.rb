class RemoveBgImageFromLanding < ActiveRecord::Migration
  def change
    remove_column :landings, :bg_image, :string
  end
end

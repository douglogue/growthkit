class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :title
      t.string :subtitle
      t.string :slug
      t.string :bg_image

      t.timestamps null: false
    end
  end
end

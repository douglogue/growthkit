class CreatePromoBars < ActiveRecord::Migration
  def change
    create_table :promo_bars do |t|
      t.string :title
      t.string :headline
      t.string :link
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :promo_bars, :user_id
  end
end

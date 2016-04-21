class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :leads, :user_id
  end
end

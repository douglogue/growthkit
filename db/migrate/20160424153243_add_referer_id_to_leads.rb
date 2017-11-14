class AddRefererIdToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :referer_id, :integer
    add_index :leads, :referer_id
  end
end

class AddLandingIdToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :landing_id, :string
    add_index :leads, :landing_id
  end
end

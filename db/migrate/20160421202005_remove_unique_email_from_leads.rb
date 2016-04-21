class RemoveUniqueEmailFromLeads < ActiveRecord::Migration
  def change
    remove_index :leads, :email
    add_index :leads, :email
  end
end

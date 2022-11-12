class RemoveTakeoutItemIdFromOrderDetails < ActiveRecord::Migration[6.1]
  def change
    remove_column :order_details, :takeout_item_id, :integer
  end
end

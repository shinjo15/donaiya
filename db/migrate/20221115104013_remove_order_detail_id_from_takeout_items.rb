class RemoveOrderDetailIdFromTakeoutItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :takeout_items, :order_detail_id, :integer
  end
end

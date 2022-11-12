class AddOrderDetailsIdToTakeoutItems < ActiveRecord::Migration[6.1]
  def change
    add_column :takeout_items, :order_detail_id, :integer
  end
end

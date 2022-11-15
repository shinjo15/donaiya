class AddTakeoutNameToOrderDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :order_details, :takeout_neme, :string
  end
end

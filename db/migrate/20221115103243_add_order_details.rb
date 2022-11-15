class AddOrderDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :order_details, :item_name, :string
  end
end

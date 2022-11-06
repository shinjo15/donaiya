class AddDetailsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :receipt_datetime, :datetime
    add_column :orders, :request, :text
  end
end

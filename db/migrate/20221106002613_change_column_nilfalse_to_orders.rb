class ChangeColumnNilfalseToOrders < ActiveRecord::Migration[6.1]
  def change
    change_column_null :orders, :receipt_datetime, false
  end
end

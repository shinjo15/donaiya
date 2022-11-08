class AddPaymentAmountToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :payment_amount, :integer, null: false, default: 0
  end
end

class RemoveTotlePaymentFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :totle_payment, :integer
  end
end

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :cart_id, null: false
      t.string :name, null: false
      t.string :telephone_number, null: false
      t.integer :totle_payment, null: false
      t.timestamps
    end
  end
end

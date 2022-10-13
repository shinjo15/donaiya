class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.integer :takeout_item_id, null: false
      t.integer :cart_id, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end

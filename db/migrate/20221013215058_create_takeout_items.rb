class CreateTakeoutItems < ActiveRecord::Migration[6.1]
  def change
    create_table :takeout_items do |t|
      t.string :takeout_name, null: false
      t.integer :tax_price, null: false
      t.text :takeout_details, null:false
      t.boolean :is_active, default: true, null: false
      t.timestamps
    end
  end
end

class CreateRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendations do |t|
      t.string :name, null: false
      t.integer :tax_price, null: false
      t.text :details, null:false
      t.timestamps
    end
  end
end

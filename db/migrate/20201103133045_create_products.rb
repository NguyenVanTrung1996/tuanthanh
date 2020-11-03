class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :discount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

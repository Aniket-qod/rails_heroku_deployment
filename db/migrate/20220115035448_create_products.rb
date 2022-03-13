class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :quantity
      t.string :image
      t.string :status
      t.references :category, null: false, foreign_key: true
      t.references :subcategory, null: false, foreign_key: true
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

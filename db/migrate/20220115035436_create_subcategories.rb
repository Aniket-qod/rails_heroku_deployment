class CreateSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.string :status
      t.string :image
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

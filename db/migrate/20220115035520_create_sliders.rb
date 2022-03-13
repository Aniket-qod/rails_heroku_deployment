class CreateSliders < ActiveRecord::Migration[7.0]
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :image
      t.string :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

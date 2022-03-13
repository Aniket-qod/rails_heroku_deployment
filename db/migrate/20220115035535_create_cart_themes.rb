class CreateCartThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_themes do |t|
      t.string :theme
      t.string :status

      t.timestamps
    end
  end
end

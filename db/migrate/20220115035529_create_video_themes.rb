class CreateVideoThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :video_themes do |t|
      t.string :video
      t.string :status

      t.timestamps
    end
  end
end

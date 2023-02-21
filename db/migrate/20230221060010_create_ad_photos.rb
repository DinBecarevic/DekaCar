class CreateAdPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :ad_photos do |t|
      t.references :ad, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end

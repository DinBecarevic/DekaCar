class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :condition
      t.decimal :price
      t.references :car_make, null: false, foreign_key: true
      t.references :car_model, null: false, foreign_key: true
      t.integer :year
      t.integer :mileage
      t.string :vin
      t.references :body_type, null: false, foreign_key: true
      t.references :fuel_type, null: false, foreign_key: true
      t.integer :kw
      t.integer :horsepower
      t.integer :ccm
      t.references :transmission_type, null: false, foreign_key: true
      t.string :consumption
      t.string :color
      t.text :description
      t.references :country, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.string :address
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :website

      t.timestamps
    end
  end
end

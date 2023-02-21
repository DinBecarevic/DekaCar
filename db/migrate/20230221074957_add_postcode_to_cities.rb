class AddPostcodeToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :postcode, :string
  end
end

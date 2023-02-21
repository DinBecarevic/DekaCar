class RemoveConditionFromAds < ActiveRecord::Migration[7.0]
  def change
    remove_column :ads, :condition, :string
  end
end

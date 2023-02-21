class AddConditionReferenceToAds < ActiveRecord::Migration[7.0]
  def change
    add_reference :ads, :condition, null: false, foreign_key: true
  end
end

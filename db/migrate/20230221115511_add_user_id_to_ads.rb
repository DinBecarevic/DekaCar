class AddUserIdToAds < ActiveRecord::Migration[7.0]
  def change
    add_column :ads, :user_id, :integer
  end
end

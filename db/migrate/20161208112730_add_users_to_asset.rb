class AddUsersToAsset < ActiveRecord::Migration[5.0]
  def change
    add_reference :assets, :user, foreign_key: true
  end
end

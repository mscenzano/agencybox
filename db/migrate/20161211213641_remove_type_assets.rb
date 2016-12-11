class RemoveTypeAssets < ActiveRecord::Migration[5.0]
  def change
        remove_column :assets, :type
        add_column :assets, :flie_type, :string
  end
end

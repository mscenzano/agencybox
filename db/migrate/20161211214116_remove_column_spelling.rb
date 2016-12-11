class RemoveColumnSpelling < ActiveRecord::Migration[5.0]
  def change
        remove_column :assets, :flie_type
        add_column :assets, :file_type, :string
  end
end

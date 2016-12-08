class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end

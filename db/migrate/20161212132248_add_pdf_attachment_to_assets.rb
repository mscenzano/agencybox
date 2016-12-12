class AddPdfAttachmentToAssets < ActiveRecord::Migration[5.0]
  def self.up
    change_table :assets do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :assets, :pdf
  end

  
end

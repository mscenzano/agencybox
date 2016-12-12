class Asset < ApplicationRecord
  belongs_to :project
  belongs_to :user

 has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_attached_file :pdf
  validates_attachment :pdf, content_type: { content_type: "application/pdf" } 
end

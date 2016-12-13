class Project < ApplicationRecord
  belongs_to :client
  has_many :assets, dependent: :destroy
end

class Asset < ApplicationRecord
  belongs_to :projects
  belongs_to :users
end

class Client < ApplicationRecord
  has_many :projects, dependent: :destroy
end

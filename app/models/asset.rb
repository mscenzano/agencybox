class Asset < ApplicationRecord
  belongs_to :projects
  belongs_to :users

  type = ["presentation","design","Final Art","Client Budget","Provider Budget","Video", "Briefing","Photos"]
  Asset::type
end

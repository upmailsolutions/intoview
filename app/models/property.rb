class Property < ApplicationRecord
  # validate name and description presence
  validates :name, :description, presence: true
end

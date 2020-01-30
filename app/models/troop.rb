class Troop < ApplicationRecord
  validates :category, presence: true
  belongs_to :category
end

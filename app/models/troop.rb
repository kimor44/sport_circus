class Troop < ApplicationRecord
  validates :name, :description, :picture, :slug, :category_id, :sport_show_id, presence: true
  belongs_to :category
  belongs_to :sport_show
end

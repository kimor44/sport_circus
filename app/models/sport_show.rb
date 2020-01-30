class SportShow < ApplicationRecord

  validates :name, :location, :picture, :description, :slug, presence: true

  has_many :date_shows

end

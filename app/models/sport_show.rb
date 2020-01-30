class SportShow < ApplicationRecord

  validates :name, :location, :picture, :description, :slug, presence: true

end

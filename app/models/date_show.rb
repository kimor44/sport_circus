class DateShow < ApplicationRecord

  belongs_to :sport_show
  validates :sport_show_id, presence: true

end

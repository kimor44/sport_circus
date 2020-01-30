class DateShow < ApplicationRecord

  validates :sport_show_id, presence: true
  belongs_to :sport_show

end

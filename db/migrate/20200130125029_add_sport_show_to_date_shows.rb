class AddSportShowToDateShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :date_shows, :sport_show, foreign_key: true
  end
end

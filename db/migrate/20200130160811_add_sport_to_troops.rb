class AddSportToTroops < ActiveRecord::Migration[6.0]
  def change
    add_reference :troops, :sport_show, foreign_key: true
  end
end

class CreateDateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :date_shows do |t|
      t.date :date

      t.timestamps
    end
  end
end

class CreateSportShows < ActiveRecord::Migration[6.0]
  def change
    create_table :sport_shows do |t|
      t.string :name
      t.string :location
      t.string :picture
      t.text :description
      t.string :slug
    end
  end
end

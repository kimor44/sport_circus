class CreateTroops < ActiveRecord::Migration[6.0]
  def change
    create_table :troops do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end

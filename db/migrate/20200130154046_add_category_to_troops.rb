class AddCategoryToTroops < ActiveRecord::Migration[6.0]
  def change
    add_reference :troops, :category, foreign_key: true
  end
end

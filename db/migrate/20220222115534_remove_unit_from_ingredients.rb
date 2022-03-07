class RemoveUnitFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :unit, :string
  end
end

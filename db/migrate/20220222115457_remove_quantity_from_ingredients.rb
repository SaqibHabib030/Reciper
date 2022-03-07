class RemoveQuantityFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :quantity, :float
  end
end

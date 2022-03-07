class RemoveIngredientTypeFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :ingredient_type, :string
  end
end

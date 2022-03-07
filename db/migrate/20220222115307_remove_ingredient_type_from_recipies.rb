class RemoveIngredientTypeFromRecipies < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipies, :ingredient_type, :string
  end
end

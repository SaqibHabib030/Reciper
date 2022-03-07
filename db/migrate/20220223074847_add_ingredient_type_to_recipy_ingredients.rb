class AddIngredientTypeToRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipy_ingredients, :ingredient_type, :string
  end
end

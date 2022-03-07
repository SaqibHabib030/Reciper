class AddQuantityToRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipy_ingredients, :quantity, :float
  end
end

class AddNameToRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipy_ingredients, :name, :string
  end
end

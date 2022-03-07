class AddUnitToRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipy_ingredients, :unit, :string
  end
end

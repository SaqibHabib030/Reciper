class AddRecipyIdToRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :recipy_ingredients, :recipy_id, :integer
    add_index :recipy_ingredients, :recipy_id
  end
end

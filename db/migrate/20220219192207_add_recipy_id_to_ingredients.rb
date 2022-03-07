class AddRecipyIdToIngredients < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :recipy_id, :integer
  end
end

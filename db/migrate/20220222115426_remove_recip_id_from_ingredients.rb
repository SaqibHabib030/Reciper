class RemoveRecipIdFromIngredients < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :recipy_id, :integer
  end
end

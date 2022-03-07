class AddIngredientTypeToRecipie < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :ingredient_type, :string
  end
end

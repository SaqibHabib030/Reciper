class AddColumnsInRecipyingredients < ActiveRecord::Migration[6.1]
  def change
    change_table(:recipy_ingredients) do |t|
      t.references :recipe
      t.references :ingredient
    end
  end
end

class CreateRecipyIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :recipy_ingredients do |t|

      t.timestamps
    end
  end
end

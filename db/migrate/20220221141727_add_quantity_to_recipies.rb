class AddQuantityToRecipies < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :quantity, :float
  end
end

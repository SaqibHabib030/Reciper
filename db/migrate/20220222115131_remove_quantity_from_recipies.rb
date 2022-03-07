class RemoveQuantityFromRecipies < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipies, :quantity, :float
  end
end

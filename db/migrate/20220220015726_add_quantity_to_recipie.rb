class AddQuantityToRecipie < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :quantity, :integer
  end
end

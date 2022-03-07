class AddUnitToRecipie < ActiveRecord::Migration[6.1]
  def change
    add_column :recipies, :unit, :string
  end
end

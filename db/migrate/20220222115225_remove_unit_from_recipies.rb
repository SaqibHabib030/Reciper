class RemoveUnitFromRecipies < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipies, :unit, :string
  end
end

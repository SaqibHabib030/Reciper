class RecipyIngredient < ApplicationRecord
    belongs_to :recipy
    belongs_to :ingredient
end

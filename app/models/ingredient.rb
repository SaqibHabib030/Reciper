class Ingredient < ApplicationRecord

 has_many :recipy_ingredients
 has_many :recipies, through: :recipy_ingredients
 accepts_nested_attributes_for :recipy_ingredients, allow_destroy: true

 validates :name, presence: true
end

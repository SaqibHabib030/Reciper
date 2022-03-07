class Recipy < ApplicationRecord
  
  has_many :recipy_ingredients
  has_many :ingredients, through: :recipy_ingredients
  
  has_one_attached :image
  accepts_nested_attributes_for :recipy_ingredients, allow_destroy: true

end

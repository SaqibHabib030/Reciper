

class Recipy < ApplicationRecord
  
  
  has_many :recipy_ingredients
  has_many :ingredients, through: :recipy_ingredients
  
  has_one_attached :image
  accepts_nested_attributes_for :recipy_ingredients, allow_destroy: true

  def self.to_csv
   CSV.generate do |csv|
      csv << column_names
          all.each do |recipy|
            csv << recipy.attributes.values_at(*column_names)
          end
      end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      recipy = find_by_id(row["id"]) || new
      recipy.attributes = row.to_hash
      recipy.save!
    end
  end
end

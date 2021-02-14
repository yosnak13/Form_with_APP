class Product < ApplicationRecord
  # def self.search_product(keyword)
  #   if keyword =! nil
  #     Product.where("name LIKE?", "%#{keyword}%")
  #   else
  #     Product.all
  #   end
  # end
  scope :search_product, -> (keyword) { where("name LIKE?", "%#{keyword}%") if keyword.present? }
end

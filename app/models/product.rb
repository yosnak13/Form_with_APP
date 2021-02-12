class Product < ApplicationRecord
  scope: search_product, -> (keyword) { where("product LIKE?", "%#{keyword}%") }
end

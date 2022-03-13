class Product < ApplicationRecord
  belongs_to :category
  belongs_to :subcategory
  belongs_to :vendor
  mount_uploader :image, ImageUploader

end

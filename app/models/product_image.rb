class ProductImage < ApplicationRecord
  belongs_to :product
  belongs_to :vendor
  mount_uploader :image, ImageUploader
end

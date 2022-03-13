json.extract! product, :id, :name, :description, :price, :quantity, :image, :status, :category_id, :subcategory_id, :vendor_id, :created_at, :updated_at
json.url product_url(product, format: :json)

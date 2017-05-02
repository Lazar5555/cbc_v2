json.extract! product, :id, :title, :description, :amount, :price, :created_at, :updated_at
json.url product_url(product, format: :json)

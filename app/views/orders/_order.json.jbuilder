json.extract! order, :id, :name, :quantity, :email, :created_at, :updated_at
json.url order_url(order, format: :json)

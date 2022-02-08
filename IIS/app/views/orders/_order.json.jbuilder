json.extract! order, :id, :supplier_id, :dateOrdered, :pending, :created_at, :updated_at
json.url order_url(order, format: :json)

json.extract! user, :id, :email, :password, :name, :branch_id, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
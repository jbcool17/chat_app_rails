json.extract! user, :id, :name, :color, :created_at, :updated_at
json.url user_url(user, format: :json)
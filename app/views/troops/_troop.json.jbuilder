json.extract! troop, :id, :name, :picture, :description, :slug, :created_at, :updated_at
json.url troop_url(troop, format: :json)

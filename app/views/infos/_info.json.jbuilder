json.extract! info, :id, :title, :description, :created_at, :updated_at
json.url info_url(info, format: :json)

json.extract! activity, :id, :name, :description, :enabled, :capacity, :created_at, :updated_at
json.url activity_url(activity, format: :json)

json.extract! ubication, :id, :name, :capacity, :subsidiary_id, :created_at, :updated_at
json.url subsidiary_ubication_url(subsidiary_id: ubication.subsidiary.id ,id: ubication.id, format: :json)

json.extract! reservation, :id, :init_date, :end_date, :cost, :user_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

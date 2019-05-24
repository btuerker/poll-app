json.extract! poll, :id, :question, :expiration_date, :created_at, :updated_at
json.url poll_url(poll, format: :json)

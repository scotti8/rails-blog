json.extract! kommentare, :id, :posts_id, :zeit, :text, :created_at, :updated_at
json.url kommentare_url(kommentare, format: :json)

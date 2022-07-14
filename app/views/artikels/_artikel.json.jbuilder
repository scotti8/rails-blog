json.extract! artikel, :id, :titel, :text, :created_at, :updated_at
json.url artikel_url(artikel, format: :json)

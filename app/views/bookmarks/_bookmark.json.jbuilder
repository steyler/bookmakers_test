json.extract! bookmark, :id, :title, :url, :category_id, :kind_id, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)

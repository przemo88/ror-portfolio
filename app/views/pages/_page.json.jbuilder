json.extract! page, :id, :name, :description, :github, :website, :created_at, :updated_at
json.url page_url(page, format: :json)

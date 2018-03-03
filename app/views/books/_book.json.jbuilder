json.extract! book, :id, :title, :author, :state, :availability, :created_at, :updated_at
json.url book_url(book, format: :json)

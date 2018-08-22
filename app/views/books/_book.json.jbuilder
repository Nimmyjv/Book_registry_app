json.extract! book, :id, :name, :author, :isbn, :price, :category, :published, :created_at, :updated_at
json.url book_url(book, format: :json)

json.array!(@books) do |book|
  json.extract! book, :id, :isbn10, :isbn13, :titulo, :autor, :editorial, :categoria, :cantidad, :precio
  json.url book_url(book, format: :json)
end

json.array!(@fabricas) do |fabrica|
  json.extract! fabrica, :name
  json.url fabrica_url(fabrica, format: :json)
end
json.array!(@mercadoria) do |mercadorium|
  json.extract! mercadorium, :nome, :descricao, :preco, :precoumcbm, :precomeiodevinte, :altura, :largura, :comprimento, :precofrete, :imposto, :precodevenda, :precodaconco, :vendamensal, :outroscustosdevenda
  json.url mercadorium_url(mercadorium, format: :json)
end
json.array!(@contatos) do |contato|
  json.extract! contato, :id, :nome, :idade, :telefone, :email, :observacoes
  json.url contato_url(contato, format: :json)
end

json.extract! cliente, :id, :nome, :telefone, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

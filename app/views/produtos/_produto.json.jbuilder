json.extract! produto, :id, :nome, :descricao, :quantidade, :vencimento, :preco_compra, :preco_venda, :created_at, :updated_at
json.url produto_url(produto, format: :json)

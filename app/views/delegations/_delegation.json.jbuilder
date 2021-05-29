json.extract! delegation, :id, :nome, :endereco, :tel, :email, :cp, :provincia, :municipio, :comuna, :status, :created_at, :updated_at
json.url delegation_url(delegation, format: :json)

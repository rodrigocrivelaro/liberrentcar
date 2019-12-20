json.extract! locacao, :id, :pessoa_id, :automovel_id, :valor, :dt_inicio, :dt_termino, :dt_retirada, :dt_entrega, :created_at, :updated_at
json.url locacao_url(locacao, format: :json)

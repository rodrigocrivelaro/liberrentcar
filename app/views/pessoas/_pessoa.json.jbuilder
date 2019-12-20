json.extract! pessoa, :id, :nome, :documento, :dt_nascimento, :email, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)

class Telefone < ApplicationRecord
  belongs_to :pessoa
  belongs_to :tipoTelefone
end

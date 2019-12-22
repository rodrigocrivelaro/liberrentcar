class Telefone < ApplicationRecord
  enum tipo_telefone: [:comercial, :particular, :trabalho]
  belongs_to :pessoa
end

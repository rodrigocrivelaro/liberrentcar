class Locacao < ApplicationRecord
  belongs_to :pessoa
  belongs_to :automovel
end

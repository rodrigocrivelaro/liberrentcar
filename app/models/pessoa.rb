class Pessoa < ApplicationRecord
    has_many :telefones
    has_many :locacaos
    has_many :habilitacaos
end

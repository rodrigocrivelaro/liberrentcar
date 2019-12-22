class Automovel < ApplicationRecord
  enum tipo_auto: [:moto, :carro, :VUC, :onibus, :caminhão]
  has_many :locacaos
end

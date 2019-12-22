Pessoa.destroy_all
pessoas = [
    {nome: "Justin Timberlake", documento: "79877842068", dt_nascimento: '2005-12-02',  email: "justin@email.com"},
    {nome: "Angelina Jolie",    documento: "17568397009", dt_nascimento: '1977-05-31',      email: "angelina@email.com"},
    {nome: "Beyoncé",           documento: "25408438082", dt_nascimento: '1986-05-07',    email: "beyoncé@email.com"},
    {nome: "Brad Pitt",         documento: "87839967027", dt_nascimento: '1971-05-16',      email: "brad@email.com"},
    {nome: "Tom Cruise",        documento: "36031680033", dt_nascimento: '1948-02-07', email: "tom@email.com"},
    {nome: "Gisele Bündchen",   documento: "33888115043", dt_nascimento: '1962-02-26', email: "gisele@email.com"},
    {nome: "Will Smith",        documento: "80050339079", dt_nascimento: '1987-01-12',   email: "will@email.com"}
]

pessoas.each do |pessoa|
    Pessoa.create!(pessoa)
end


Telefone.destroy_all
telefones = [
    {pessoa: Pessoa.find_by(nome: "Justin Timberlake"), ddd: "011", numero: "7987-7842",  tipo_telefone: :comercial,  preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Angelina Jolie"),    ddd: "021", numero: "1756-8397",  tipo_telefone: :particular, preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Beyoncé"),           ddd: "045", numero: "2540-8438",  tipo_telefone: :trabalho,   preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Brad Pitt"),         ddd: "036", numero: "98783-9967", tipo_telefone: :particular, preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Tom Cruise"),        ddd: "022", numero: "3603-1680",  tipo_telefone: :comercial,  preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Gisele Bündchen"),   ddd: "032", numero: "3388-8115",  tipo_telefone: :particular, preferencial: true},
    {pessoa: Pessoa.find_by(nome: "Will Smith"),        ddd: "011", numero: "98005-0339", tipo_telefone: :trabalho,   preferencial: true}
]

telefones.each do |telefone|
    Telefone.create!(telefone)
end


Habilitacao.destroy_all
habilitacaos = [
    {pessoa: Pessoa.find_by(nome: "Justin Timberlake"),numero: "7195601426", modalidade: "A,B", validade: '2023-12-02'},
    {pessoa: Pessoa.find_by(nome: "Angelina Jolie"),   numero: "6943716123", modalidade: "A,C", validade: '2022-05-31'},
    {pessoa: Pessoa.find_by(nome: "Beyoncé"),          numero: "1180791711", modalidade: "B",   validade: '2024-08-07'},
    {pessoa: Pessoa.find_by(nome: "Brad Pitt"),        numero: "4022223573", modalidade: "E",   validade: '2023-05-16'},
    {pessoa: Pessoa.find_by(nome: "Tom Cruise"),       numero: "4792176902", modalidade: "D",   validade: '2023-02-07'},
    {pessoa: Pessoa.find_by(nome: "Gisele Bündchen"),  numero: "1910131222", modalidade: "A,B", validade: '2023-02-26'},
    {pessoa: Pessoa.find_by(nome: "Will Smith"),       numero: "6892136432", modalidade: "A",   validade: '2019-10-12'}
]

habilitacaos.each do |habilitacao|
    Habilitacao.create!(habilitacao)
end


Automovel.destroy_all
automovels = [
    {modelo: "CB 300",         cor: "vermelho", tipo_auto: :moto,     placa: "AHD-5454", custo_diario: 99.99},
    {modelo: "HB 20",          cor: "preto",    tipo_auto: :carro,    placa: "FMR-6345", custo_diario: 139.99},
    {modelo: "Agrale 6500",    cor: "prata",    tipo_auto: :VUC,      placa: "RGH-4245", custo_diario: 199.99},
    {modelo: "Millennium III", cor: "azul",     tipo_auto: :onibus,   placa: "BTF-5278", custo_diario: 279.99},
    {modelo: "Atego 2425",     cor: "branco",   tipo_auto: :caminhão, placa: "BYT-2354", custo_diario: 409.99}
]

automovels.each do |automovel|
    Automovel.create!(automovel)
end


Locacao.destroy_all
locacaos = [
    {pessoa: Pessoa.find_by(nome: "Angelina Jolie"), automovel: Automovel.find_by(modelo: "HB 20"),       valor: 199.98, dt_inicio: '2019-11-07 10:30.00', dt_termino: '2019-11-09 10:20:00', dt_retirada: '2019-11-07 10:40:00', dt_entrega: '2019-11-09 09:20:00'},
    {pessoa: Pessoa.find_by(nome: "Brad Pitt"),      automovel: Automovel.find_by(modelo: "Agrale 6500"), valor: 399.98, dt_inicio: '2019-11-07 08:10.00', dt_termino: '2019-11-09 10:20:00', dt_retirada: '2019-11-07 08:00:00', dt_entrega: '2019-11-09 10:20:00'},
]

locacaos.each do |locacao|
    Locacao.create!(locacao)
end
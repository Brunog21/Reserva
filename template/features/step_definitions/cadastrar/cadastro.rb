comprar = Comprar.new
cadastro = Cadastro.new

Quando('desejo de comprar uma roupa') do
  comprar.compra
end

Então('faca o cadastro') do
 cadastro.cadastrar
end

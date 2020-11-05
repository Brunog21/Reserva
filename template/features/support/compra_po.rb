class Comprar < SitePrism::Page

  element :acessorios, 'a[title=Acessórios]'
  element :produto, '#custom-product-grid-displayName-0053540-03'
  element :botao_compra, '#cc-prodDetailsAddToCart'
  element :comprar, '#CC-headerShoppingCart-Checkout'

  def compra
    acessorios.gclick
    sleep 10
    produto.gclick
    botao_compra.gclick
    comprar.gclick
  end


end

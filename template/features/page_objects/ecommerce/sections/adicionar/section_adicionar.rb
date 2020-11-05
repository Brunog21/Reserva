module Ecommerce
  module Sections
    module Adicionar
      class AdicionarCarrinho < SitePrism::Section
        element :btn_carrinho, '#cc-prodDetailsAddToCart'
        element :btn_pedido, '#CC-headerShoppingCart-Checkout'

        def add_produto
          btn_carrinho.gclick
          btn_pedido.gclick
          sleep 5
        end

      end
    end
  end
end

require_relative '../../sections/adicionar/section_adicionar.rb'

module Ecommerce
  module Pages
    module Adicionar
      class Adicionar < SitePrism::Page
        set_url '/'

        section :adicionar_carrinho, Ecommerce::Sections::Adicionar::AdicionarCarrinho, '#oracle-cc'

      end
    end
  end
end

module Ecommerce
  module Sections
    module Sacola
      class Sacola < SitePrism::Section
        require 'faker'
        require 'cpf_faker'

        element :input_cpf, 'input[Id=CC-cart-identification-login]'
        element :fechar_compra, '.fechar-pedido'

        def acessar_acessorios
          usuario = Factory.user
          input_cpf.set usuario[:cpf]
          fechar_compra.gclick
          sleep 5
        end
      end
    end
  end
end


module Ecommerce
  module Sections
    module Acessorios
      class MainAcessorio < SitePrism::Section
        element :btn_roupa, '#custom-product-grid-displayName-0053540-10'


        def acessar_acessorio
          btn_roupa.gclick
        end

      end
    end
  end
end

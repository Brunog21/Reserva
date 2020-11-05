require_relative '../../sections/acessorios/main_acessorio.rb'

module Ecommerce
  module Pages
    module Acessorio
      class Roupas < SitePrism::Page
        set_url '/'

        section :main_acessorio, Ecommerce::Sections::Acessorios::MainAcessorio, '#product-grid'

      end
    end
  end
end

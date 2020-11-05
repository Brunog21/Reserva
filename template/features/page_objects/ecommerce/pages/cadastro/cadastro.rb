require_relative '../../sections/cadastrar/cadastro.rb'

module Ecommerce
  module Pages
    module Cadastro
      class Cadastro < SitePrism::Page
        set_url '/'

        section :cadastro, Ecommerce::Sections::Cadastrar::Cadastro, '#checkout-registration'

      end
    end
  end
end

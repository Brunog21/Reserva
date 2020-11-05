require_relative '../../sections/sacola/section_sacola.rb'

module Ecommerce
  module Pages
    module Sacola
      class Sacola < SitePrism::Page
        set_url '/'

        section :sacola, Ecommerce::Sections::Sacola::Sacola, '#main'

      end
    end
  end
end

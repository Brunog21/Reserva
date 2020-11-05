module Ecommerce
  module Sections
    module Cadastrar
      class Cadastro < SitePrism::Section

        element :input_email, '#checkoutUserModel-userEmail-adminDown'
        element :input_nome, '#checkoutRegistration-nome-fp1'
        element :input_sobre, '#checkoutRegistration-sobrenome'
        element :input_tele, '#checkoutRegistration-telefone'
        element :input_data, '#checkoutRegistration-dataNascimento'
        element :input_senha, '#checkoutRegistration-password'
        element :fim, 'button[class="btn btn-default btn-finish-login cta-forms"]'

          def acessar_acessorios
            sleep 5
            usuario = Factory.user
            pass = "123456"
            input_email.set usuario[:email]
            input_nome.set usuario[:nome]
            input_sobre.set usuario[:sobrenome]
            input_tele.set usuario[:celular]
            input_data.set usuario[:nasc]
            input_senha.set pass
            element fim.gclick
            sleep 5
        end

      end
    end
  end
end

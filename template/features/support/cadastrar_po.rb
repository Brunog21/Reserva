    class Cadastro < SitePrism::Page
require 'faker'
require 'cpf_faker'
Faker::Config.locale = 'pt-BR'


      element :cpff, 'input[Id=CC-cart-identification-login]'
      element :pedido, '.fechar-pedido'
      element :mail, '#checkoutUserModel-userEmail-adminDown'
      element :nome, '#checkoutRegistration-nome-fp1'
      element :sobre, '#checkoutRegistration-sobrenome'
      element :tele, '#checkoutRegistration-telefone'
      element :data, '#checkoutRegistration-dataNascimento'
      element :senha, '#checkoutRegistration-password'
      element :fim, 'button[class="btn btn-default btn-finish-login cta-forms"]'

      def cadastrar
        cpf = Faker::CPF.pretty
        email = Faker::Internet.email
        name = Faker::Name.first_name
        second = Faker::Name.last_name
        numero = Faker::PhoneNumber.cell_phone
        nasc = Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%d/%m/%Y')
        pass = "123456"
        cpff.set cpf
        pedido.gclick
        mail.set email
        nome.set name
        sobre.set second
        tele.set numero
        data.set nasc
        senha.set pass
        fim.gclick
        sleep 20
      end
    end

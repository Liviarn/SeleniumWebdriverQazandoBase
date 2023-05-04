# language: pt

  @login
  Funcionalidade: Login
    Eu como usuário do sistema
    Quero fazer login
    Para fazer uma compra no site

    Contexto: Acessar tela de login
      Dado que estou na tela de login
    @login-sucesso

    Cenário: Login com sucesso
      Quando preencho login "eduardo.finotti@qazando.com" e senha "123456"
      E clico em Login
      Então vejo mensagem de login com sucesso

    @email-invalido
    Esquema do Cenário: Validar: <name>
      Quando preencho login "<user>" e senha "<password>"
      E clico em Login
      Então vejo mensagem "<message>" de campo não preenchido
      Exemplos:
        | user | password | message                  | name  |
        | qualquercoisa |123456      |E-mail invalido| E-mail invalido |
        |               |123456      |E-mail invalido| E-mail vazio    |
        |eduardo.finotti@qazando.com |123    |Senha invalido|Senha invalida|
        |eduardo.finotti@qazando.com |   |Senha vazia| Senha vazia         |

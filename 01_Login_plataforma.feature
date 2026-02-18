          #language: pt

            Funcionalidade:  Login na plataforma EBAC-SHOP
            Como cliente da EBAC-Shop
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página inicial de login da EBAC-SHOP

            Cenário: Autenticação com sucesso
            Quando eu inserir o usuário "milena@ebac.com.br"
            E a senha "456CR!"
            Então devo ser direcionado para a tela "meus pedidos"

            Esquema do Cenário: Login com dados inválidos
            Quando eu inserir o usuário <usuario>
            E a senha <senha>
            Então deve exibir uma mensagem <mensagem>
            Exemplos:
            | usuario          | senha | mensagem                                                   |
            | jose@ebac        | 12345 | "Insira um e-mail válido"                                  |
            | jose@ebac.com.br | 12345 | "Login ou senha inválido"                                  |
            | jose@ebac.com.br | 789   | "Senha muito curta, sua senha possui 4 caracteres ou mais" |

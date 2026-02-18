            #language: pt

            Funcionalidade: Tela de cadastro e Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha Comprar

            Contexto:Dado que eu esteja na página de checkout da EBAC-SHOP

            Esquema do Cenário: Cadastro com sucesso (todos campos obrigatórios preenchidos)
            Quando eu preencher o campo <nome>
            E o CPF <cpf>
            E o sobrenome <sobrenome>
            E o e-mail <email>
            E clicar em "finalizar"
            Então deve exibir a mensagem <mensagem>

            Exemplos:
            | nome  | sobrenome  | cpf            | email                | mensagem                                                 |
            | Lucas | Pesseguini | 456.782.109-97 | pesseguini@gmail.com | "cadastro concluído, finalize sua compra"                |
            | Lucas |            | 456.782.109-97 | pesseguini@gmail.com | "Insira um sobrenome para concluir o cadastro"           |
            | Lucas | Pesseguini |                | pesseguini@gmail.com | "Insira um CPF para concluir o cadastro"                 |
            | Lucas | Pesseguini |                | pesseguini@gmail     | "Insira um e-mail e CPF válido para concluir o cadastro" |

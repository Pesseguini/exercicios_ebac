            #language: pt

            Funcionalidade: Tela de cadastro e checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha Comprar
            Contexto: Dado que eu esteja na página de chechout da EBAC-SHOP

            Esquema do Cenário: Validar dados obrigatórios no cadastro
            Quando eu preencher o nome <nome>, sobrenome <sobrenome>, CPF <cpf>, e-mail <e-mail>
            E clicar em "finalizar"
            Então deve exibir a mensagem <mensagem>

            Exemplos:
            | nome  | sobrenome  | cpf            | e-mail                  | mensagem                                       |
            | Lucas | Pesseguini | 452.258.965-11 | pesseguini@gmail.com    | "cadastro concluído,finalize sua compra"       |
            | Lucas |            | 452.258.965-11 | pesseguini@gmail.com    | "Insira um sobrenome para concluir o cadastro" |
            | Lucas | Pesseguini |                | pesseguini@gmail.com    | "informe o CPF para concluir o cadastro"       |
            |       | Pesseguini | 452.258.965-11 | pesseguini@gmail.com.br | "Insira seu nome para concluir o cadastro"     |
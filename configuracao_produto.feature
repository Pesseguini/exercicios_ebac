 #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC Shop
            Quero configurar meu produto de acordo com o tamanho e gosto
            E escolher a quantidade
            Para depois eu inserir no carrinho

            Contexto:
            Dado que eu acesse a página do produto "Camiseta EBAC"

            Esquema do Cenário: Validar seleções obrigatórias (Critério1)
            Quando eu selecionar a cor <cor>
            E o tamanho <tamanho>
            E a quantidade <quantidade>
            E clicar no botão "Comprar"
            Então deve exibir a mensagem de alerta <mensagem>

            Exemplos:
            | Cor      | Tamanho | Quantidade | mensagem                         |
            | vazio    | M       | 2          | "Selecione a cor"                |
            | Azul     | vazio   | 1          | "Selecione o tamanho"            |
            | Verde    | G       | 1          | "Produto adicionado ao carrinho" |
            | Vermelho | GG      | Vazio      | "Selecione a quantidade"         |


            Esquema do Cenário: Limite de produtos por venda
            Quando eu selecionar a cor "Azul", o tamanho "M" e a quantidade <quantidade>
            E clicar no botão "Comprar"
            Então deve exibir a mensagem <mensagem_limite>

            Exemplos:
            | quantidade | mensagem_limite                                        |
            | 12         | "O limite máximo atingido,apenas 10 podutos por venda" |
            | 8          | "Produto adicionado ao carrinho"                       |
            | 5          | "Produto adicionado ao carrinho"                       |

Cenário: Retornar ao estado original ao clicar em limpar (Critério3)
Dado que eu selecionei uma cor, um tamanho e uma quantidade
Quando eu clicar no botão "Limpar"
Então os campos de cor, tamanho e quantidade devem ficar vazios


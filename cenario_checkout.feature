
            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Dado Informe os dados obrigatorios corretamente

            Cenario: Campos obrigatórios
            Quando eu preencher todos os campos obrigatórios
            Então deve mostrar com a mensagem "Cadastro realizado com sucesso" e seguir para a pagina de finalização de compra

            Cenário: Campo e-mail inválido
            Quando eu digitar um e-mail em formato inválido
            Então  deve aparecer a mensagem "O campo <e-mail> deve estar em formato válido."

            Cenário: Campo obrigatório vazio
            Quando eu preencher apenas os campos <nome>,<país>,<endereço>,<cidade>,<cep>,<telefone> e <e-mail>
            Então deve aparecer a mensagem "Todos os campos obrigatórios devem ser preenchidos."

            | nome  | país | endereço   | cidade         | cep       | telefone     | endereço de e-mail |
            | kenia | BR   | Rua acacia | Belo Horizonte | 31630-900 | 11 999999999 | kenia@teste.com.br |


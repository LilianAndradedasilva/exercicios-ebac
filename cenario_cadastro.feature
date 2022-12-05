
            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Dado Informe os dados obrigatorios corretamente

            Cenario: Campo obrigatório não informado
            Quando eu não preencher campos obrigatórios
            Então deve aparecer a mensagem "O campo Nome é de preenchimento obrigatório"

            | nome | sobrenome  | nome da empresa | país | endereço        | cidade    | cep       | telefone     | endereço de e-mail      |
            |      | das Graças | APA             | BR   | R:Bromelias, 09 | São Paulo | 01002-020 | 11 3113-8045 | gracamaria@teste.com.br |


            Cenário: Campo e-mail inválido
            Quando eu digitar um e-mail em formato inválido
            Então  deve aparecer a mensagem "O campo <e-mail> deve estar em formato válido."

            | e-mail               |
            | thais,p@teste.com.rb |
            | augusto@teste        |

            Cenário: Campo obrigatório vazio
            Quando eu não preencher campos obrigatórios
            Então deve aparecer a mensagem "Todos os campos obrigatórios devem ser preenchidos."

            | nome | sobrenome | nome da empresa | país | endereço | cidade         | cep       | telefone | endereço de e-mail |
            | null | Barros    | TROW            | BR   | null     | Belo Horizonte | 31630-900 | null     | kenia@teste.com.br |


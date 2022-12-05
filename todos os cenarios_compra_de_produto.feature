Feature: Compra de Produto
        Como cliente da EBAC-SHOP
        Quero configurar meu produto de acordo com meu tamanho e gosto
        E escolher a quantidade
        Para depois inserir no carrinho

        Given que eu acesse o portal EBAC

    Scenario: Configuração carrinho
        When eu selecionar o <tamanho>
        And eu selecionar a <cor>
        And eu selecionar a <quantidade>
        Then deve informar "Produto adicionado ao carrinho"

            | cor    | tamanho | quantidade |
            | Blue   | XS      | 2          |
            | Orange | S       | 3          |
            | Red    | M       | 1          |
            | Blue   | XL      | 5          |

    Scenario: Quantidade Inválida
        When selecionar a cor
        And  selecionar o tamanho
        And  somar a <quantidade>
        Then deve mostrar a mensagem "Limite de compras: Máximo 10 produtos por compra"

            | cor | tamanho | quantidade |
            |     |         | 2          |
            |     |         | 3          |
            |     |         | 1          |
            |     |         | 5          |
            |     |         | 1          |

    Scenario: Cor inválida
        When eu selecionar o tamanho
        And  selecionar a quantidade
        Then Informe "Selecione a <cor> disponível"

            | cor    | tamanho | quantidade |
            | Blue   |         |            |
            | Orange |         |            |
            | Red    |         |            |


    Scenario: Tamanho inválido
        When selecionar a cor
        And  selecionar a quantidade
        Then Informe "Selecione o <tamanho> disponível"

            | cor | tamanho | quantidade |
            |     | LS      |            |
            |     | S       |            |
            |     | M       |            |
            |     | X       |            |
            |     | XL      |            |

    Scenario: Botão Limpar
        When clicar no botão Limpar
        Then Todos os dados informados pelo usuário devem ser apagados


Feature: Autenticação de usuário
        Como cliente da EBAC-SHOP
        Quero fazer o login (autenticação) na plataforma
        Para visualizar a pagina meus pedidos

        Given Informe usuário e senha

    Scenario: Login e senha válidos
        When Informar o <login>
        And  Informar a <senha>
        Then Informar a mensagem "Olá, <Nome>" e direcionar para a pagina de pedidos

            | Login                  | Senha     | Nome      |
            | anamaria@teste.com.br  | YYY%&@123 | Ana Maria |
            | Kenia@teste.com.br     | Kny@Il09  | Kenia     |
            | ClaudiaMteles@dill.com | x*&@456   | Claudinha |
            | Lucylla@yahoo.com.br   | @YYll%$23 | Lucylla   |

    Scenario: Login ou senha inválidos
        When Informar o <login>
        And  Informar a <senha>
        Then Informar a mensagem "Usuário ou senha inválidos"

            | Login                  | Senha     |
            | anamariaa@teste.com.br | YYY%&@123 |
            | kenia@teste.com.br     | Kenya@123 |
            | ClaudiaMteles@dill.com | clau@123  |
            | Lucyllla@yahoo.com     | @YYll%$23 |


Feature: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Given Informe os dados obrigatorios corretamente

Scenario: Campo obrigatório não informado
    When eu digitar <nome>*
    And digitar <sobrenome>*
    And digitar <nome da empresa>
    And digitar <país>*
    And digitar <endereço>*
    And digitar <cidade>*
    And digitar <cep>*
    And digitar <telefone>*
    And digitar <endereço de e-mail>*
    Then deve aparecer a mensagem "O campo Nome é de preenchimento obrigatório"


    |nome|sobrenome|nome da empresa|país| endereço|cidade|cep|telefone|endereço de e-mail|
    |null| das Graças|APA|BR|R:Bromelias, 09|São Paulo|01002-020|11 3113-8045|gracamaria@teste.com.br|
    

Scenario: Campo e-mail inválido
     When eu digitar <nome>*
    And digitar <sobrenome>*
    And digitar <nome da empresa>
    And digitar <país>*
    And digitar <endereço>*
    And digitar <cidade>*
    And digitar <cep>*
    And digitar <telefone>*
    And digitar <endereço de e-mail>*
    Then deve aparecer a mensagem "O campo e-mail é de preenchimento obrigatório deve estar em formato válido."

    |nome|sobrenome|nome da empresa|país| endereço|cidade|cep|telefone|endereço de e-mail|
    |Thais|Pires|LWEB|BR|Rua Doutor Argemiro Orlando Dotto|Campinas|13051-091|thais,p@teste.com.rb|

Scenario: Campo obrigatório vazio
     When eu digitar <nome>*
    And digitar <sobrenome>*
    And digitar <nome da empresa>
    And digitar <país>*
    And digitar <endereço>*
    And digitar <cidade>*
    And digitar <cep>*
    And digitar <telefone>*
    And digitar <endereço de e-mail>*
    Then deve aparecer a mensagem "Todos os campos obrigatórios devem ser preenchidos."

    |nome|sobrenome|nome da empresa|país| endereço|cidade|cep|telefone|endereço de e-mail|
    |Kenia|Barros|TROW|BR|null|Belo Horizonte|31630-900|null|kenia@teste.com.br|

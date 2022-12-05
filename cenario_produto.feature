            Funcionalidade: Compra de Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Dado que eu acesse o portal EBAC

            Cenário: Configuração carrinho
            Quando eu selecionar o <tamanho>
            E eu selecionar a <cor>
            E eu selecionar a <quantidade>
            Então deve informar "Produto adicionado ao carrinho"

            | cor    | tamanho | quantidade |
            | Blue   | XS      | 2          |
            | Orange | S       | 3          |
            | Red    | M       | 1          |
            | Blue   | XL      | 5          |

            Cenário: Quantidade Inválida
            Quando  a quantidade comprada ultrapassar 10 peças
            Então  deve mostrar a mensagem "Limite de compras: Máximo 10 produtos por compra"


            Cenário: Cor inválida
            Quando eu selecionar uma cor não disponível
            Então  Informe "Esta cor não está disponível"


            Cenário: Tamanho inválido
            Quando selecionar o tamanho selecionado estiver indisponível
            Então Informe "Este tamanho não está disponível"


            Cenário: Botão Limpar
            Quando clicar no botão Limpar
            Então  Todos os dados informados pelo usuário devem ser apagados



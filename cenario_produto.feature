            Funcionalidade: Compra de Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Dado que eu acesse o portal EBAC

            Cenário: Configuração carrinho
            Quando eu selecionar o tamanho, a cor e a quantidade
            Então deve informar "Produto adicionado ao carrinho"

            Cenário: Seleções Inválidas
            Quando  eu selecionar a <cor>, <tamanho> ou <quantidade> invalidas ou indisponível
            Então  deve mostrar a mensagem "Seleção inválida ou indisponivel, verifique as opções disponíveis"

            | cor   | tamanho | quantidade |
            | Preto | XXL     | 11         |

Cenário: Botão Limpar
Quando clicar no botão Limpar
Então  Todos os dados informados pelo usuário devem ser apagados



            Funcionalidade: Autenticação de usuário
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar a pagina meus pedidos

            Dado Informe usuário e senha

            Cenário: Login e senha válidos
            Quando Informar um login válido
            E  Informar uma senha válida
            Então Informar a mensagem "Olá,seja bem vindo" e direcionar para a pagina de pedidos

            Cenario: Login ou senha inválidos
            Quando Informar um login valido
            E      Informar uma senha inválida
            Então Informar a mensagem "Usuário ou senha inválidos"
            

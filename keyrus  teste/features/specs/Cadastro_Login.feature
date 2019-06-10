# language: pt

Funcionalidade: Cadastro e Compra

    Sendo Usuário da web quero realizar cadastro site de compras online
    Posso fazer cadastro no sistema
    Para realizar compras online


Cenário: Cadastro 

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|keyrustestautomation@gmail.com|
    |Senha|abcd12|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|09/06/1980|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então sou direcionado para pagina principal e realizo processo de compra



Cenário: Obrigatoriedade campo E-mail 

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|   |
    |Senha|abcd12|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|09/06/1980|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então devo visualizar mesagem de alerta "Campo obrigatório" 


Cenário: Limite campo senha 

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|jiduxuro@crypto10-net.club|
    |Senha|123|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|09/06/1980|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então devo visualizar mesagem de alerta para senha "Senha precisa ter entre 6 a 50 caracteres."    


Cenário: Campo CPF invalido 

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|jiduxuro@crypto706-net.club|
    |Senha|12334563|
    |CPF|000.000.000-00|
    |Nome|Wiliam Teste|
    |Data nascimento|09/06/1980|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então devo visualizar mesagem de alerta para CPF "Campo inválido"


Cenário: obrigatoriedade campo Nome  

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|jiduxuro@crypto2457-net.club|
    |Senha|12334563|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|09/06/1980|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então devo visualizar mesagem de alerta para nome "Campo obrigatório"            


Cenário: Campo data Invalida  

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados
    |E-mail|jiduxuro@crypto6746-net.club|
    |Senha|12334563|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|00/00/0000|
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro
    Então devo visualizar mesagem de alerta para data de nascimento "Campo inválido"


Cenário: Campo sexo  

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados sem seleção campo sexo
    |E-mail|jiduxuro@crypto267865-net.club|
    |Senha|12334563|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|00/00/0000|
    |sexo||
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro sem seleção campo sexo
    Então devo visualizar mesagem de alerta para sexo "Campo inválido"     


Cenário: Obrigatoriedade campo telefone  

    Dado que acesso a pagina de cadasto 
    E possuo seguinte dados 
    |E-mail|jiduxuro@crypto2566754-net.club|
    |Senha|12334563|
    |CPF|000.000.001-91|
    |Nome|Wiliam Teste|
    |Data nascimento|06/04/1988|
    |sexo||
    |Telfone|(47) 3577-8398|
    Quando realizo meu cadastro 
    Então devo visualizar mesagem de alerta para telefone "Campo obrigatório"
               
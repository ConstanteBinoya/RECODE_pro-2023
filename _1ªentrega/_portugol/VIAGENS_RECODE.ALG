Algoritmo "Viagens_RECODE"

//EXERC�CIO:
   //Usando conceitos de programa��o estruturada (Vetor), criar em pseudoc�digo um menu para
   //simular um cadastro para uma ag�ncia de viagens com as seguintes fun��es:
      //Cadastro de cliente;
      //Cadastro de destino;
      //Consulta para cada estrutura de dados.
      
 //PRINCIPAI DESAFIOS:
    // Enxugar o c�digo (sei que conseguiria apresentar um c�digo mais enxuto, entretanto,
    // com o prazo acabando e as aulas fluindo com novos assuntos - por hora - ficou invi�vel
    // prolongar a entrega;
    
    // N�o consegui integrar - de forma l�gica - a compila��o de dados de cadastro de clientes
    // com as de cadastro de viagens, para que ambas compusessem o mesmo �ndice no ato da consulta.
    // Para tanto a consulta deve ser realizada de forma individual: cadastro de clientes ou viagens.
    
    //Identa��o: ainda me confundo com os n�veis e sub-n�veis de identa��o, mesmo utilizando o
    //"CLTR + G" aindaadicionei algumas linhas com o uso do enter para dividir o blocos e
    //melhorar a minha visualiza��o, isso contribuiu para o aumento do c�digo.

Var
   clientesNome: vetor[1..1000] de caractere      //Bloco de vetores que comportam os dados do men�
   clientesIdade: vetor[1..1000] de inteiro       //cadastro de clientes
   clientesCPF: vetor[1..1000] de inteiro
   clientesTelefone: vetor[1..1000] de inteiro
   totalClientes: inteiro

   destinosPaisEmbarque: vetor[1..1000] de caractere     //Bloco de vetores que comportam os dados
   destinosCidadeEmbarque: vetor[1..1000] de caractere   //do men� cadastro de destinos
   destinosPaisDestino: vetor[1..1000] de caractere
   destinosCidadeDestino: vetor[1..1000] de caractere
   totalDestinos: inteiro

   opcao: inteiro    //Variav�l que capta a escolha, do usu�rio, no men� principal
   

Procedimento CadastroCliente  //Optei por inserir blocos de Procedimento pata diminuir o c�digo

var
   nomeCliente: caractere
   idadeCliente, cpfCliente, telefoneCliente: inteiro
   
Inicio

   Escreval("   ---------------------------") //Algumas linhas de c�digo cumprem o papel de estilizar
   Escreval("   ==== Fa�a seu Cadastro ====") //o programa numa tentativa de aplicar estrat�geas de SEO.
   Escreval("   ---------------------------")
   Escreval("Digite seu Nome Completo: ")
   Leia(nomeCliente)
   Escreval("Digite sua Idade: ")
   Leia(idadeCliente)
   Escreval("Digite seu CPF: ")
   Leia(cpfCliente)
   Escreval("Digite seu Telefone para Contato: ")
   Leia(telefoneCliente)
   limpatela

   totalClientes <- (totalClientes + 1)
   
   clientesNome[totalClientes] <- nomeCliente
   clientesIdade[totalClientes] <- idadeCliente
   clientesCPF[totalClientes] <- cpfCliente
   clientesTelefone[totalClientes] <- telefoneCliente
   
   Saudacao()
   Escreval("||Cliente Cadastrado com Sucesso!||")
   Escreval("||C�digo para consulta: ", totalClientes,"       ||")
   
FimProcedimento


Procedimento CadastroDestino
var
   paisEmbarque, cidadeEmbarque, paisDestino, cidadeDestino: caractere
   
Inicio
   Escreval("   ------------------------- ")
   Escreval("  === Cadastre seu Destino ===")
   Escreval("   ------------------------- ")
   Escreval("Digite o Pais de Embarque: ")
   Leia(paisEmbarque)
   Escreval("Digite a Cidade de Embarque: ")
   Leia(cidadeEmbarque)
   Escreval("Digite o Pais de Destino: ")
   Leia(paisDestino)
   Escreval("Digite a Cidade de Destino: ")
   Leia(cidadeDestino)
   limpatela

   totalDestinos <- (totalDestinos + 1)
   
   destinosPaisEmbarque[totalDestinos] <- paisEmbarque
   destinosCidadeEmbarque[totalDestinos] <- cidadeEmbarque
   destinosPaisDestino[totalDestinos] <- paisDestino
   destinosCidadeDestino[totalDestinos] <- cidadeDestino
   
   Saudacao()
   Escreval("||Destino Cadastrado com Sucesso!||")
   Escreval("||C�digo para Consulta: ", totalDestinos, "       ||")
   
FimProcedimento


Procedimento ConsultaCliente
var
   indice: inteiro
   
Inicio
   Escreval("  -----------------------------")
   Escreval("== Digite o C�digo do Cliente: == ")
   Escreval("  -----------------------------")
   Leia(indice)
   Limpatela
   Saudacao()
   Se ((indice >= 1) e (indice <= totalClientes)) entao
      Escreval("      --- Dados do Cliente ---")
      Escreval("-----------------------------------")
      Escreval("Nome: ", clientesNome[indice])
      Escreval("Idade: ", clientesIdade[indice])
      Escreval("CPF: ", clientesCPF[indice])
      Escreval("Telefone: ", clientesTelefone[indice])
   Senao
      Escreval("�ndice inv�lido. Cliente n�o encontrado.")
   Fimse
FimProcedimento


Procedimento ConsultaDestino
var
   indice: inteiro
Inicio
   Escreval("  -----------------------------")
   Escreval("== Digite o C�digo da Viagem:  ==")
   Escreval("  -----------------------------")
   Leia(indice)
   Limpatela
   Saudacao()
   Se ((indice >= 1) e (indice <= totalDestinos)) entao
      Escreval("      --- Dados do Destino ---")
      Escreval("-----------------------------------")
      Escreval("Pa�s de Embarque: ", destinosPaisEmbarque[indice])
      Escreval("Cidade de Embarque: ", destinosCidadeEmbarque[indice])
      Escreval("Pa�s de Destino: ", destinosPaisDestino[indice])
      Escreval("Cidade de Destino: ", destinosCidadeDestino[indice])
   Senao
      Escreval("C�digo inv�lido. Destino n�o encontrado.")
   Fimse
FimProcedimento


Procedimento Saudacao
Inicio
   Escreval("===================================")
   Escreval("             BINA-TUR!")
   Escreval("-----------------------------------")
   Escreval(" Sua ag�ncia de Viagens Inteligente")
   Escreval("===================================")
FimProcedimento


Inicio

   totalClientes <- 0
   totalDestinos <- 0
   
   Escreval("===================================")
   Escreval("       Bem-vindo � BINA-TUR!")
   Escreval("-----------------------------------")
   Escreval(" Sua ag�ncia de Viagens Inteligente")
   Escreval("===================================")
   Repita
      Escreval("-----------------------------------")
      Escreval("|            -- Menu --           |")
      Escreval("|---------------------------------|")
      Escreval("|     1 - Cadastro de Cliente     |")
      Escreval("|     2 - Cadastro de Destino     |")
      Escreval("|     3 - Consulta de Cliente     |")
      Escreval("|     4 - Consulta de Destino     |")
      Escreval("|     0 - Sair                    |")
      Escreval("-----------------------------------")
      Escreval("     == Escolha uma op��o ==")
      Leia(opcao)
      limpatela
      
      //A op��o pela condicional "ESCOLHA" foi feita ap�s perceber
      //que o c�digo estava muito grande com o "SE / SENAO / ENTAO.
         Escolha (opcao)
            Caso 1
               CadastroCliente()
            Caso 2
               CadastroDestino()
            Caso 3
               ConsultaCliente()
            Caso 4
               ConsultaDestino()
            Caso 0
               saudacao()
               Escreval("")
               Escreval("Obrigado por utilizar nosso sistema.")
               Escreval("             At� logo!")
               Escreval("===================================")
            OutroCaso
               Escreval("###################################")
               Escreval("# OP��O INV�LIDA. TENTE NOVAMENTE.#")
               Escreval("###################################")
               Escreval("")
               
         FimEscolha
         
   Ate (opcao = 0)
Fimalgoritmo
programa {
  funcao inicio() {
    inteiro menu
inteiro saldo = 0
    real saque = 0
    real deposito
    cadeia extrato = ""
    inteiro acumulador = 0, meses
    cadeia controle
    cadeia senha ="244"
    cadeia pswd
    real investimento, rendimento

    enquanto(menu != 0)
    {
      escreva("|------------MENU---------|\n")
      escreva("| 1.SALDO  R$"+ saldo+ "            |\n")
      escreva("| 2.SAQUE                 |\n")
      escreva("| 3.DEPOSITO              |\n")
      escreva("| 4.EXTRATO               |\n")
      escreva("| 5.INVESTIMENTO          |\n")
      escreva("| 0.SAIR                  |\n")
      escreva("|-------------------------|\n")
      escreva("OPÇÂO -> ")
      leia(menu)
      limpa()

      se(menu > 0)
      {
       escolha(menu)
       {
         caso 1:
           escreva("Seu salde é de: " + saldo + "\n")
           leia(menu)
         pare

         caso 2:
           escreva("Digite sua senha: ")
           leia(pswd)

           se(pswd == senha)
           {
             escreva("Digite o valor do saque: \n")
             leia(saque)
             enquanto(saque < 0)
             {
               escreva("Valor invalido digite novamente: ")
               leia(saque)
              }

             se(saque > saldo)
             {
               escreva("Não autorizado!\n")
               escreva("Aperte ENTER para continuar")
               leia(controle)
               limpa()
              } 

             senao 
             {
               saque = saque - saldo
               acumulador = acumulador + deposito
               escreva("Seu saldo será de: " + saque + "\n")
               escreva("Saque realizado com sucesso!\n")
               escreva("aperte ENTER para continuar.\n")
               leia(controle)
               limpa()
             }
            }
         pare 

         caso 3:
           se(deposito < 0)
           escreva("Digite o valor do deposito: \n")
           leia(deposito)

            enquanto(deposito<0)
           {
             escreva("Valor invalido digite novamente: ")
             leia(deposito)
           }
           deposito = deposito + saldo
           acumulador = acumulador + deposito
           extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
           escreva("Deposito realizado com sucesso!\n")
           escreva("Aperte ENTER para continuar")
           leia(controle)
           limpa()
         pare

         caso 4:
           escreva(extrato)
           escreva("Aperte ENTER para continuar")
           leia(controle)
           limpa()
         pare

         caso 5:
           escreva("Digite o valor que deseja investir: ")
           leia(investimento)

           se(investimento > saldo)
           {
             escreva("Saldo insuficiente!")
           }
           senao
           {
             escreva("Digite a quantidade de meses que deseja investir: ")
             leia(meses)
             saldo = saldo - investimento

             para(inteiro contador = 0;  contador < meses; contador++)
             {
               rendimento = investimento * 3.09
               investimento = rendimento
             }
             saldo = saldo + investimento
             escreva("O rendimneto final foi de: " + investimento + "\n")
            }
         pare
          
        }
      }
    }








































  }
}

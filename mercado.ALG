Algoritmo "Mercado"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Jailson Costa dos Santos
// Descri��o   : Fa�a um algoritmo para ler: a descri��o do produto (nome), a quantidade adquirida e o pre�o
//               unit�rio. Calcular e escrever o total (total = quantidade adquirida * pre�o unit�rio), o desconto e o total
//               a pagar (total a pagar = total - desconto), sabendo-se que:
//                - Se quantidade <= 5 o desconto ser� de 2%
//                 - Se quantidade > 5 e quantidade <=10 o desconto ser� de 3%
//                  - Se quantidade > 10 o desconto ser� de 5%
// Autor(a)    : Jo�o Victor Oliveira Arruda
// Data atual  : 01/09/2021
Var
   // Se��o de Declara��es das vari�veis
   nomeProduto: caracter
   quant: inteiro
   precoUn, subtotal, desconto, quantidade, total: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreva("Digite o nome do produto: ")
   leia(nomeProduto)

   Escreva("Digite o valor/un do produto: ")
   leia(precoUn)

   Escreva("Digite a quantidade que foi comprada: ")
   leia(quant)

   se(quant <= 5) entao
      desconto <- 2
   senao

      se(quant > 5) e (quant <= 10) entao
         desconto <- 3
      senao
         desconto <- 5
      fimse
      
   fimse
   
   subtotal <- quant*precoUn
   total <- subtotal - subtotal*desconto/100
   
   Escreval("Produto: ", nomeProduto, " | Pre�o/Un: ", precoUn, " | Quantia comprada: ", quant, " | Subtotal: R$", subtotal, " | Desconto: R$", desconto*subtotal/100, " | Total: R$", total)

Fimalgoritmo
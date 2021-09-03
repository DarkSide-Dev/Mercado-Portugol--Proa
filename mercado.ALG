Algoritmo "Mercado"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Jailson Costa dos Santos
// Descrição   : Faça um algoritmo para ler: a descrição do produto (nome), a quantidade adquirida e o preço
//               unitário. Calcular e escrever o total (total = quantidade adquirida * preço unitário), o desconto e o total
//               a pagar (total a pagar = total - desconto), sabendo-se que:
//                - Se quantidade <= 5 o desconto será de 2%
//                 - Se quantidade > 5 e quantidade <=10 o desconto será de 3%
//                  - Se quantidade > 10 o desconto será de 5%
// Autor(a)    : João Victor Oliveira Arruda
// Data atual  : 01/09/2021
Var
   // Seção de Declarações das variáveis
   nomeProduto: caracter
   quant: inteiro
   precoUn, subtotal, desconto, quantidade, total: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
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
   
   Escreval("Produto: ", nomeProduto, " | Preço/Un: ", precoUn, " | Quantia comprada: ", quant, " | Subtotal: R$", subtotal, " | Desconto: R$", desconto*subtotal/100, " | Total: R$", total)

Fimalgoritmo
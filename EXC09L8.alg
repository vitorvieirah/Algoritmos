algoritmo "Ex9"
// 9) Construa um algoritmo que solicite 10 números pares
//  (não repetidos) entre 10 e100 preenchendo um vetor denominado V1.
//Posteriormente, alimente umsegundo vetor (V2) contendo o valor de cada elemento
//de V1 adicionando 3.Em seguida, preencha uma matriz 10x3 onde
//a primeira coluna conterá os valores de V1, a segunda coluna conterá os valores
//de V2 e a terceira coluna conterá a soma das duas primeiras colunas da matriz.
//Apresente no final os dois vetores e a matriz.
var
  matriz : vetor[1..10,1..3] de inteiro
  v1     : vetor[1..10] de inteiro
  v2     : vetor[1..10] de inteiro
  x,j,num  : inteiro
  repitido : logico
//------------------------------------------------------------------------------
procedimento preenchendoV1
inicio
    para x de 1 ate 10 faca
      repita
        limpatela
        escreva("Digite o ", x ,"° numero: ")
        leia(num)
        
        se(num % 2 = 1)entao
          num := 0
        senao
          repitido := validaNumRepitido(num)
        fimse
      ate(num >= 10) e (num <= 100) e (repitido = falso)
      v1[x] := num
    fimpara
fimprocedimento
//------------------------------------------------------------------------------
procedimento preenchendoV2
inicio
  para x de 1 ate 10 faca
    v2[x] := v1[x] + 3
  fimpara
fimprocedimento
//------------------------------------------------------------------------------
procedimento preenchendoMatriz
inicio
  para x de 1 ate 10 faca
    matriz[x,1] := v1[x]
    matriz[x,2] := v2[x]
    matriz[x,3] := v1[x] + v2[x]
  fimpara
fimprocedimento
//------------------------------------------------------------------------------
procedimento imprimeResultado
inicio
  escreval()
  escreval("Vetor 1: ")
  para x de 1 ate 10 faca
     escreval(x:3, " | ", v1[x])
  fimpara
  
  escreval("======================")
  escreval("Vetor 2: ")
  para x de 1 ate 10 faca
     escreval(x:3, " | ", v2[x])
  fimpara
  
  escreval("======================")
  escreval("Matriz: ")
   escreval("---------------------")
   escreval("|||||   1 |  2 |  3 |")
   escreval("|||||----------------")
   para x de 1 ate 10 faca
     escreva(x:3," || ")
     para j de 1 ate 3 faca
       escreva(matriz[x,j]:3, " |")
     fimpara
     escreval()
   fimpara
fimprocedimento
//------------------------------------------------------------------------------
funcao validaNumRepitido(n : inteiro) : logico
var
  aux, cont : inteiro
inicio
  repita
    cont := cont + 1
    se(n = v1[cont])entao
      aux := 1
    fimse
  ate (aux = 1) ou (cont = 10)
  
  se(aux = 1)entao
    retorne verdadeiro
  senao
    retorne falso
  fimse
fimfuncao
//------------------------------------------------------------------------------
inicio
  preenchendoV1
  preenchendoV2
  preenchendoMatriz
  imprimeResultado
fimalgoritmo

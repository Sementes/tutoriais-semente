# http://www.devmedia.com.br/linguagem-ruby-como-criar-uma-classe-com-ruby-puro/31504
# Meu primeiro programa ruby

# Vamos relembrar algumas coisas de outras linguagens
# Conceitos básicos
# - Variaveis
# - Arrays
# - Matrizes
# - Estruturas Condicionais
# - Estruturas de Repetição
# - Funções

# -- VARIAVEIS --
# Variaveis tem tipagem dinamica, então não precisamos
# definir o tipo e ele mesmo adquire o tipo de acordo
# com a execução
x = 10
x.class           # Fixnum
x = 1.0
x.class           # Float
x = "Vaca"
x.class           # String
x = :VacaGostosa
x.class           # Symbol
x = true
x.class           # TrueClass

# Para declaramos variaveis damos um nome e um valor
# a elas

# Porém como definimos um array?

# Existem duas formas a primeira
x = [1,2,3]
# Que é equivalente
x = 1, 2, 3

# Arrays em ruby tem indice 1 em 0 ou seja a primeira
# posição de qualquer vetor ruby é a posição 0

# Para definirmos um vetor vazio temos várias formas
# a primeira é inserir um vetor vazio na forma seguinte
x = []

# Para inserir valores temos a função PUSH
x.push 1
# Para remover o último valor temos a função POP
x.pop

# Outras formas de inicializar um Array
x = Array.new

# Em ruby nós temos uma classe de HashTable
# o nome dessa classe é hash
# essas são duas formas de inicializar uma HashTable
x = Hash.new
x = {}

# As chaves e os valores de uma hash table são dados
# da forma {"key" => "value"}
x["key"] = "valor"
x = {"key"=>"valor"}

# Matrizes são basicamente arrays bidimensonais
# Então não temos nenhuma diferença marcante
x = [[]]
x.class       # Array

# Essa é uma forma simples de definir uma matriz
x = Array.new(4, Array.new(4,1))

# Só para testes
condicao = true

# Estruturas condicionais!
# O if do ruby é bem simples e segue a forma if...
# elsif...else...end

# Exemplo
if condicao
  # Executa algo se a condicao verdadeira
elsif condicao
  # Executa outra coisa se a condicao verdadeira
else
  # Executa uma coisa se nada for verdade
end

# Em inline-if deve se usar a palavra then
# na forma
if condicao then print x else print condicao end

# Condicionais aceitos
## x == y   - Igualdade
## x > y    - Maior que
## x < y    - Menor que
## x != y   - Diferente
## !x       - Negação
## x =~ //  - Comparação por REGEX
## &&, and  - Comparador AND
## ||, or   - Comparador OR

# Mas e se precisarmos executar algo que nao
# gostariamos que acontecesse?
unless y
  y = false
end

# O unless funciona sempre que a variavel ou o retorno
# da função não é esperado como um retorno falso, ou
# nulo ('nil')

# Uma estrutura interessante é o seletor condicional
# case .. when
# podemos definir ranges (lista/array de inteiros)
# na forma 1..x
case x
  when 1..5
    # faca algo
  when 6..10
    # faca outra coisa
  else
    # nao faca nada
end

# Estruturas de repetição
# Ruby não tem um for C-like :/, o for do ruby itera
# sobre listas, como o do Python, então precisamos
# sempre ter um array
for i in 1..10
  puts i
end

# Agora que aprendemos como funciona um for
# vamos aplicar essa estrutura a algumas conceitos
# já apresentados. Vamos começar por um if
# Como ficaria o código para printarmos somentes os
# pares dentro de um range de 1..10?
# ::RESPOSTA::
for i in 1..10
  if i % 2 == 0
    puts i
  end
end

# Simples não?

# Vamos declarar um vetor de strings
x = ["test", "vaca", "camelos", "gatos", "coelhos"]

# Agora vamos verificar formas de acessar esse vetor
# Como eu disse for do ruby, itera sobre "listas"
# então podemos esse vetor e iterar sobre ele com o for
# Vamos printar somentes as strings que tenham tamanho
# menor ou igual a 5
# ::RESPOSTA::
for e in x
  if e.length <= 5
    puts e
  end
end

# Outra forma de escrever esse for
for e in x do if e.length <= 5 then puts e end end

# O que vai acontecer se executarmos o for de cima
# depois de adicionarmos isso ao vetor?
x[10] = "morcego"

# Como vocês podem ver, executar o for irá dar erro
# por tal razão precisamos corrigir o mesmo para que
# ele funcione mesmo com a presença da classe nil
# em nosso vetor
# ::RESPOSTA::
for e in x
  if !e.nil? && e.length <= 5
    puts e
  end
end

# Podemos avançar uma posição no for usando a palavra
# reservada, usando "next" e parar o for com o "break"
# para repertirmos um mesmo laço podemos usar o redo
# porém devemos lembrar que o uso incorreto do redo
# pode nos levar a laços sem fim

# A dewhilesvantagem do for do ruby é de não permitir o uso
# da modificação (ao menos não na forma padrão) do
# indice, porém podemos simular
# while condicao do ... end
while condicao
  # Faça alguma coisa enquanto isso for verdade
end

# Para exercitamos o uso do while vamos criar
# um while que emule um FOR c-like
# for(i = 0; i < n; i++)
# ::RESPOSTA::
n = 10
i = 0
 i < n do
  i += 1
  x = i
  print x
end

# Until...
# Enquanto o while ele funciona enquanto a condição
# for verdadeira o until ele funciona quando a mesma
# é falsa, ou seja até que a condição seja verdadeira
# em contraste com o while que é até que ela seja
# falsa. Exemplo
until condicao
  # Faça alguma coisa
end

# Em ruby possuimos escopo dinâmico ou seja a
# 'proximidade' das chamadas define o escopo da
# variavel, isso indica que blocos como do...end
# e begin...end se possuirem chamadas de funções dentro
# dos mesmos as funções internas podem acessar as
# externas.

# O bloco begin...end é maravilhoso.
# Porque? Simples!
# Ele permite testes
# Ele permite loops
# Ele permite checagens e por ai vai
begin
  # Tenta fazer alguma coisa

  # Recupera se houver erro
rescue NormalError => e
  # Corrige o erro
end while condicao

# O bloco begin end também tem uma propriedade
# interessante, que é a criação de um novo escopo
# ou seja variaveis dentro de um bloco begin...end
# são locais a tal bloco

# Funções
# Definir funções é a "piece of cake", "mamão com
# açucar", EAZY!
# def nome_da_funcao(parametros)...end
# O retorno de uma função pode ser implicito ou
# explicito, o retorno implicito é aquele que ocorre
# quando não definimos o retorno
# Exemplo
def soma(x,y)
  x + y
end

# O retorno explicito é quando definimos o retorno
def soma2(x,y)
  return x + y
end

# Como tudo em ruby, parenteses são opcionais
# logo você pode escrever
def soma3 x, y ; x + y end

# Vamos exercitar a criação de funções
# Exercicios
# 1. Criar função que receba uma string digitada pelo
#    usuario e retorne essa string 3 vezes mostrando
#    o indice de execução.
#    Exemplo de saida:
#    1. vaca
#    2. vaca
#    3. vaca
# 2. Criar uma função que receba uma string e mostre
#    somente as letras pares, numa linha e somente
#    as vogais na outra
#    Exemplo de saida
#    Pares: aa
#    Vogais: aa
# Obs1: A função para imprimir numa linha com '\n'
#      incluso é a função 'puts', e a função para
#      receber uma entrada do usuario é a função
#      'gets'
# Obs2: Criar vetores de string em ruby é muito simples
#       tirando as formas padrões você pode definir
#       um vetor de palavras como sendo, Exemplo:
%w{lista de palavras separadas por espaco}
# Obs3: Você pode utilizar a sintaxe #{variavel} para
#       imprimir strings compostas com variaveis de
#       forma mais simplificada exemplo
"TEST: #{x}, TEST2: #{gets}"
# equivalente a: "Test: " + x ", TEST2: " + gets

# ::RESPOSTA:: 1
def printa_3_vezes str
  for i in 1..3
    print "#{i}. #{str}"
  end
end

printa_3_vezes gets

# ::RESPOSTA:: 2
def vogais_e_pares str
  print "Pares: "
  for i in 0..str.length
    if (i + 1) % 2 == 0
      print str[i]
    end
  end

  print "\nVogais"
  for e in str
    case e
      when 'a','e','i','o','u'
        print e
    end
  end

  print "\n"
end

# Prontinho finalizamos os assuntos básicos da
# linguagem e agora iremos para detalhes especificos
# da mesma.

# Os conceitos que precisamos aprender agora são
# - Classes
# - Modulos
# - Blocos
# * Metodos interessantes

# Obs: Variaveis globais são precedidas por $
#      variaveis locais são iniciadas por letra
#      minuscula, variaveis constantes são
#      precedidas por letra inicial Maiuscula

# Ruby é uma linguagem orientada objetos, muito fiel
# ao paradigma da orientação a objetos
# Vamos agora aprender a fazer class
# O exemplo a seguir mostra todos os conceitos
# básicos de uma classe
class NomeComLetraInicialMaiuscula < ClassePai
  @variavel_de_instancia_read_only
  @variavel_de_instancia_write_only
  @variavel_de_instancia_read_and_write
  @@variavel_de_classe

  # Getters
  attr_reader :variavel_de_instancia_read_only

  # Setters
  attr_writer :variavel_de_instancia_write_only

  # Getters ands setters
  attr_accessor :variavel_de_instancia_read_and_write

  # Construtor
  def initialize params
    # Faz operações necessárias
  end

  # Metodo comum de classe
  def metodo_de_classe param
    # Faz a função desejada
  end

  # Metodo comum estático
  def self.metodo_estatico params
    # Faz a função desejada
  end
end

# Vamos criar e testar uma class criada com os
# conhecimentos adquiridos hoje, para que isso seja
# mais dinâmico e interessante, vamos fazer com que
# as classes criadas sejam úteis ao nosso projeto
# Para isso vamos propor duas classes de estudo

# Classe Planta
# Responsavel: José

# Classe Horta
# Responsavel: Alana

# Para inicializarmos uma classe fazemos
NomeComLetraInicialMaiuscula.new params

# Para definirmos blocos de Classes ou funções,
# variaveis, etc. Usamos "modules"
# a sintaxe de um modulo é a mesma que de uma classe
# module name ... end
# Exemplo
module Testa
  x = 10

  def testa
    x = 20
  end
end

# Modulos são próximas a interfaces de JAVA,
# ou seja não podem ser construidas
# e precisam estar dentro obrigatoriamente de uma
# classe

# Se um modulo está em outro arquivo podemos usar
# a função require 'nome_do_modulo' para requisitar
# o mesmo
# Exemplo
require 'http'

# Com isso chegamos a parte final do nosso curso
# intensivo de ruby, porém não podemos acabar
# esse curso sem falar sobre os BLOCOS!
# Por falta de tempo não irei ensinar como fazer
# funções ou metodos que aceitem blocos, e sim
# ensinarei como utilizar as funções
# que utilizam blocos

# A ideia de um bloco é uma função passada por
# parametro, a diferença desta é que ao invés de
# multiplas funções elas geralmente se resumem a uma
# e são escritas após a chamada da função
# Um exemplo bem simples de bloco é o metodo each
5.times do |e|
  print e
end

# Vamos analisar a definição de um bloco
# bloco como já dito são funções passadas por parametro
# elas possuem a forma: (metodo)... do |params| ... end
# aonde os params são especificados por quem criou
# a função ou o metodo requisitado e estes nos ensinam
# qual sera o funcionamento do bloco
# Um uso corriqueiro para blocos é a criação de
# callback's, um callback é uma função chamada assim
# que uma interrupção ou qualquer outra chamada
# assincrona acontece, como podemos ver no código
# para leitura de uma requisição HTTP

# PRONTO ISSO FINALIZA NOSSO TUTORIAL!
# ESPERO QUE TENHAM GOSTADO!
# BYEEE!!!
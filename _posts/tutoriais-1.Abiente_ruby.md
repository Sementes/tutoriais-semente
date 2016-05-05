---
layout: post
title: Ambiente Ruby
categories: tutoriais basicos, ruby
- blog
---
## Prefácio

Olá esse é o primeiro tutorial da série de tutorias que irão auxiliar no começo do desenvolvimento
de aplicações ruby. Qualquer pessoa é livre para utilizar o material aqui no fornecido desde
que referencie os autores. Bem isso é tudo, espero que possa aproveitar ao máximo este material
e que brevemente esteja criando grandes aplicações nessa incrivel linguagem chamada Ruby.

## Introdução

<p align="center">
  <img src="imgs/ruby-logo.png?raw=true" width="200"/>
</p>

Antes de começarmos a apresentar a linguagem Ruby é preciso preparar o ambiente.
Ruby é uma linguagem Script criada no Japão por Yukihiro Matsumoto em meados de 1995, por ser uma
linguagem script Ruby possui um interpretador próprio o irb (Interactive Ruby), e permite a leitura
de arquivos de texto com código ruby através do binário ruby.

Por ser uma linguagem script e muito utilizada para criações de aplicações para Web, não há muitas
soluções integradas de desenvolvimento (IDE), e o recomendado para se criar aplicações é a utilização
de editores de texto, porém concordem comigo ou não mesmo um bom editor como o Vim, Emacs, ou até
mesmo o Sublime Text não são soluções muito rápidas para iniciantes, já que é dificil configurar
essas ferramentas para programação de aplicações Ruby.

Apesar de não existir muitas soluções, há algumas poucas que tentam sanar esse problema, são eles
o Eclipse, o NetBeans, o Github Atom, e a JetBrains, essas empresas criam soluções de ambiente de
desenvolvimento integrado e possuem soluções bem famosas e com um bom suporte a diversas
linguagens de programação e Ruby é uma delas porém as soluções da Eclipse e do NetBeans não
são boas o suficiente, e o Github Atom por melhor que possa ser para criações de IDE's ainda é
um editor de texto, a única realmente boa opção de IDE para ruby nesse caso é a solução da
JetBrains mesma empresa responsável pelo IntelliJ e Android Studio, que é o RubyMine (uma linda
IDE), porém a mesma custa uma pequena fortuna ($ 90,00 dolares algo em torno de ~ R$ 310,00 reais),
qual deveria ser a solução? IDE OpenSource! Obviamente, porém as soluções existentes não são muito
práticas, ou pecam pela falta de alguns recursos básicos, como auto-completar ou debug.

Bem o que fazer então, escolher uma IDE OpenSource simples ou pagar o valor para a JetBrains?
Nenhuma das duas opções! Pelo menos, não se seu interesse for testar a ferramenta ou estiver
num projeto open source, ou por último umas das soluções mais interessantes, o aplicativo é
gratuito para estudantes de universidade que possuam e-mail verificado ou algum documento legal
de identificação, e é essa opção que irei apresentar agora.

<p align="center">
  <img src="imgs/rm-logo.png?raw=true" width="200"/>
</p>

Para utilizar a versão de estudante do RubyMine precisamos fazer uma conta de estudante, para isso
precisamos ir até esta parte do site da JetBrains (https://www.jetbrains.com/student/), clicar em
"apply now", aceitar termos e informar os documentos que ele pedir, e por último criar a conta
é importante lembrar que caso você tenha criado uma conta que não tenha sido por este site você
terá que deletar a mesma e criar outra agora por este formulário já que ele só é válido para
novas contas.

Com a conta criada podemos baixar o RubyMine e dar inicio ao desenvolvimento do nosso ambiente de
desenvolvimento.

# Passo 1

Antes de mais nada não vou focar na instalação de um sistema operacional adequado, mas recomendo fortme

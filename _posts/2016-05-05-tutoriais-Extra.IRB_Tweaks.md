---
layout: post
title: IRB Tweaks and Tips
categories:
- tutoriais avancados
- ruby
- blog
---
Como todos devem saber o terminal interativo do ruby se chama
IRB e tem a função de ajudar na análise rápida de trechos código e na
execução de testes. Apesar de ser uma ótima ferramenta numa
linguagem script, a maioria desses terminais não possuem
funções como autocompletar ou saida colorizada, tal falta de
recursos básicos atrapalha a realização de testes, e a aprendizagem
principalmente para iniciantes, para sanar esses problemas eu
apresento uma forma de tornar o IRB (Interactive Ruby) mais
produtivo.

Abaixo há duas screenshots mostrando como o IRB é por default
e como ele ficou após algumas modificações.

<p align="center">
  <b>Antes</b></br>
  <img src="/assets/imgs/irb-before.png?raw=true"/>
</p>

<p align="center">
  <b>Depois</b></br>
  <img src="/assets/imgs/irb-after.png?raw=true"/>
</p>

## Introdução

O irb permite a edição de propriedades básicas como prompt
e retorno através da edição da classe IRB, os passos a seguir
demonstram como editar tal classe para oferecer uma interface mais
intuitiva para programação.

### Passo 1

Inicialmente é preciso instalar a gem 'brice' use o comando a seguir
para instalar a mesma.

```sh
gem install 'brice'
```

### Passo 2

O irb guarda configurações num arquivo oculto em sua home de nome
`.irbrc`. Por default tal arquivo não existe então precisamos
criá-lo antes de poder continuar. Você pode utilizar esse comando
em sua home para criar o mesmo.

```sh
cd ~
touch .irbrc
```

### Passo 3

Bem agora que possuimos todos os requisitos para começar as
modificações, iremos realizar a modificação do arquivo `.irbrc`
sendo assim abra o mesmo com o editor de texto de sua preferência,
o arquivo deverá estar em `~\.irbrc`. Após aberto copie e cole o
conteudo abaixo, fazendo as modificações que achar necessário.

```ruby
# File .irbrc
# Inicia a gem que contem as funções de autocompletar
# e colorização de saida
require 'brice/init'

# Para estilizarmos o prompt iremos salvar algumas constantes
# com propriedaes para o mesmo
normal   = "\e[0m"
bold     = "\e[1m"

# Da mesma forma que salvamos as constantes das propriedades
# vamos salvar agora as cores que poderemos utilizar
verde    = "\e[32m"
vermelho = "\e[31m"
azul     = "\e[34m"
roxo     = "\e[35m"
end_cor  = "\e[0m"

# Vamos ativar a identação automática
IRB.conf[:AUTO_INDENT] = true

# E configurar um novo estilo de prompt
IRB.conf[:PROMPT][:SEMENTE_STYLE] = {
    :AUTO_INDENT => true,
    :PROMPT_I => verde + "(%N) " + end_cor + vermelho + bold + ">> " + end_cor,
    :PROMPT_N => verde + "(%N) " + end_cor + vermelho + bold + ">> " + end_cor,
    :PROMPT_S => nil,
    :PROMPT_C => verde + "(%N:%i) " + end_cor + vermelho + bold + ">> " + end_cor,
    :RETURN   => bold + azul + "=>" + end_cor + " %s\n"
}

# Agora que temos um novo estilo de prompt vamos tornar ele padrão
IRB.conf[:PROMPT_MODE] = :SEMENTE_STYLE

# Por padrão o irb não salva os comandos da sessão, por isso vamos
# ativar esse recurso
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 1000
```

## Dicas

Apesar do terminal irb ter diversas similiaridades com terminais
*NIX/LINUX, é bom relembrar alguns atalhos:

*   **TAB**: Apertar tab duas ou mais vezes permite completar nome
             de variaveis, metodos, classes e gems externas
*   **CTRL-R**: O atalho CTRL-R permite a consulta recursiva de um
                determinado texto
*   **SETA PARA CIMA**: Apertar a seta para cima do teclado permite
                        percorrer pelas entradas anteriores do
                        terminal

### Obrigado :)

--
<p align="center">
    Developed by </br>
  <img alt="Sementes Soluções em Ecologia" width="350" src="/assets/imgs/sementes-logo.png?raw=true"/>
A
</p>

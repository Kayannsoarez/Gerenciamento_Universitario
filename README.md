# Gerenciamento_Universitario
Projeto de Banco de Dados: Gerenciamento Universitario

## Resumo 
Esse projeto teve como objetivo utilizar os conhecimentos adquiridos durante a disciplina de Fundamentos de Bancos de Dados e aplicá-los em uma simulação de um projeto real.

Consiste em informações de uma Universidade, que possui Departamentos, Professores, Estudantes de Pós-Graduação e Projetos de pesquisa. Dentre outras relações, em que professores e estudantes participam de projetos de pesquisa e estes respectivos professores podem trabalhar em vários departamentos.

As informações utilizadas para a modelagem e criação do banco de dados do Gerenciamento Universitario são as seguintes:

* Os professores têm um CPF, um nome, uma idade, uma posição e uma especialidade de pesquisa.
* Os projetos têm um número de projeto, um nome de financiador, uma data inicial, uma data final e um orçamento.
* Os estudantes de pós-graduação têm um CPF, um nome, uma idade e um programa de pós-graduação (por exemplo, mestrado ou doutorado).
* Cada  projeto  é  gerenciado  por  um  professor  (conhecido  como  o  pesquisador principal do projeto)
* Cada  projeto  é  conduzido  por  um  ou  mais  professores  (conhecidos  como  co-pesquisadores).
* Os professores podem gerenciar e/ou trabalhar em múltiplos projetos
* Cada projeto é conduzido por um ou mais estudantes de pós-graduação (conhecidos como os assistentes de pesquisa do projeto)
* Quando  os  alunos  de  pós-graduação  conduzem  um  projeto,  um  professor  deve supervisionar seu trabalho no projeto. Os alunos de pós-graduação podem trabalhar em múltiplos  projetos,  e,  nesse  caso,  eles  terão  um  supervisor  (potencialmente diferente) para cada um.
* Os departamentos têm um número de departamento, um nome de departamento, e um escritório principal
* Os  departamentos  têm  um  professor  (conhecido  como  o  chefe  do  departamento) que administra o departamento.
* Os professores trabalham em um ou mais departamentos e, para cada departamento em que eles trabalham, uma porcentagem de tempo está associada a seu trabalho.
* Os  alunos  de  pós-graduação  têm  um  departamento principal  no  qual  eles  estão conduzindo seu programa de pós-graduação.
* Cada   aluno   de  pós-graduação  tem  um  outro  aluno  de  pós-graduação  mais experiente  (conhecido  como  conselheiro  do  aluno)  que  o  aconselha  nos  cursos  a que deve assistir.

## Diagrama
![Alt Text](https://github.com/Kayannsoarez/Gerenciamento_Universitario/blob/main/Diagrama.png)

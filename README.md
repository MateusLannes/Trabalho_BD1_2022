
# TRABALHO 01:  Empresa de Contratação GHHL 
>Trabalho desenvolvido durante a disciplina de BD1

***
# Sumário


<details>
    <summary> <strong style="font-size:20px;">Entrega 1</strong> </summary>

***
- :white_check_mark: [1. Componentes preenchidos](#1-componentes)
- :white_check_mark: [2. Introdução e motivação](#2introdução-e-motivação)
- :white_check_mark: [3. Mini-mundo](#3mini-mundo)
- :white_check_mark: [4. Prototipação](#4prototipação-perguntas-a-serem-respondidas-e-tabela-de-dados)
    - :white_check_mark: [4.1 Modelo figma](#41-rascunhos-básicos-da-interface-mockups)
    - :white_check_mark: [4.2 Perguntas](#42-quais-perguntas-podem-ser-respondidas-com-o-sistema-proposto)
    - :white_check_mark: [4.3 Tabela de dados do Sistema](#43-tabela-de-dados-do-sistema)
- :white_check_mark: [5. Modelo Conceitual](#5modelo-conceitual)
    - :white_large_square: [5.1 Validação do Modelo conceitual](#51-validação-do-modelo-conceitual)
    - :white_check_mark: [5.2 Descrição dos dados](#52-descrição-dos-dados)
- :white_check_mark: [6. Modelo Lógico](#6-modelo-lógico)
- :white_check_mark: [7. Modelo Físico](#7-modelo-físico)
- :white_check_mark: [8. Insert Tabelas](#8-insert-aplicado-nas-tabelas-do-banco-de-dados)
- :white_check_mark:  [9. Tabelas e Principais Consultas](#9-tabelas-e-principais-consultas)
    - :white_check_mark:  [9.1 Consulta das tabelas com todos os dados inseridos](#91-consultas-das-tabelas-com-todos-os-dados-inseridos-todas)
***

</details>
<details>
<summary><strong style="font-size:20px;"> Entrega 2 </strong></summary>

***
- - :white_large_square: [9.2 Consulta das tabelas com filtros `WHERE`](#92-consultas-das-tabelas-com-filtros-where-mínimo-4)
  - :white_large_square: [9.3 Consultas L.A e tabelas ou campos renomeados](#93-consultas-que-usam-operadores-lógicos-aritméticos-e-tabelas-ou-campos-renomeados-mínimo-11)
  - :white_large_square: [9.4 Consultas `Like` e `Datas`](#94-consultas-que-usam-operadores-like-e-datas-mínimo-12)
  - :white_large_square: [9.5 Instruções aplicando atualização e exclusão de dados](#95-instruções-aplicando-atualização-e-exclusão-de-dados-mínimo-6)
  - :white_large_square: [9.6 Consultas com `INNER JOIN` e `ORDER BY`](#96-consultas-com-inner-join-e-order-by-mínimo-6)
  - :white_large_square: [9.7 Consultas com `GROUP BY` e funções de agrupamento](#97-consultas-com-group-by-e-funções-de-agrupamento-mínimo-6)
  - :white_large_square: [9.8 Consultas com `LEFT`, `RIGHT` e `FULL JOIN`](#98-consultas-com-left-right-e-full-join-mínimo-4)
  - :white_large_square: [9.9 Consultas com `SELF JOIN` e `VIEW`](#99-consultas-com-self-join-e-view-mínimo-6)
  - :white_large_square: [9.10 Subconsultas](#910-subconsultas-mínimo-4)

</details>

***
## Entrega 3
***

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Josué Ramos Souza: josue.rsou@gmail.com<br>
Luiz Sampaio Horta: luizhorta2910@gmail.com<br>
Mateus Lannes Cunha: mateuslannes100@gmail.com<br>
<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>

Este documento contém a especificação do projeto do banco de dados de <GHHL Contratação> 
<br>e motivação da escolha realizada. <br>

 
 > Montar um sistema no estilo de um site online que consiga receber serviços de clientes contratantes da área de Tecnologia da Informação e também exibir vagas para candidatos com base nos modelos oferecidos pela empresa com formas de atuação remota, presencial ou híbrida, monitorar a contratação dos candidatos que se candidatarem às vagas, controlar informações de funcionários e filiais da empresa. Armazenar informações referentes a empresa e suas filiais, funcionarios e candidatos e as vagas oferecidas pela empresa.

### 3.MINI-MUNDO<br>
## Descrição do Minimundo:
<!-- Descrever o mini-mundo! (Não deve ser maior do que 30 linhas, se necessário resumir para justar) <br>
Entrevista com o usuário e identificação dos requisitos.(quando for o caso de sistemas com cliente  real)<br>
Descrição textual das regras de negócio definidas como um  subconjunto do mundo real 
cujos elementos são propriedades que desejamos incluir, processar, armazenar, 
gerenciar, atualizar, e que descrevem a proposta/solução a ser desenvolvida. -->

<!-- O sistema proposto para a "Devcom Projetos conterá as informacões aqui detalhadas. Dos Projetos serão armazenados o número, nome e cidade. Dos Departamentos serão armazenados o número e nome. O cliente destacou que cada projeto pode ter vários departamentos auxiliando no seu desenvolvimento, e cada departamento pode estar envolvido em vários projetos. Os dados relativos aos empregados que serão armazenados são: rg, nome, cpf, salário, data inicial do salario e supervisor de cada empregado. É importante destacar que cada empregado pode ser supervisionado por outro empregado, e obrigatoriamente deve estar alocado a um único departamento, mas pode gerenciar vários departamentos ou não gerenciar nenhum. Um empregado também pode participar de vários projetos, caso seja necessário, mas não precisa obrigatoriamente estar alocado em algum projeto. Com relação aos dependentes serão armazenadas as informações de nome do dependente, data de nascimento, sexo e grau de parentesco. Cada empregado pode ter vários dependentes, mas um dependente esta associado apenas a um único empregado. Com relação ao histórico de salário devemos armazenar as informações de valor do salário, data de início do salário no período e data final do salário no período. É importante lembrar que cada funcionario pode ter diversos eventos de histórico de salário associados a ele visto que este dado pode ser alterado várias vezes. 
-->
> Uma empresa multinacional de tecnologia deseja um sistema para auxiliar na  contratação de novos funcionários, uma vez que, atualmente, o departamento de RH apresenta problemas de lentidão com o levantamento de dados dos candidatos às vagas de emprego e encontrar bons candidatos de acordo com a necessidade de seus contratantes. As principais áreas de busca de vagas são segurança, desenvolvimento de software, banco de dados, marketing e design. As etapas da contratação são divididas em entrevista com RH, entrevista técnica e exame admissional. O sistema a ser desenvolvido deve permitir o cadastro de novos candidatos e seus dados, o que deve ser feito mediante validação de um gestor, o sistema também deve permitir o cadastro de novas filiais, com seus endereços, meios de contato e gestores responsáveis, para que possam selecionar funcionários de acordo com elas. A empresa tem na sua estrutura 3 tipos de gestores, gestor geral, gestor de filial e gestor de contratação, que são responsáveis pelo nível de decisão da empresa. Os gestores precisam cadastrar o nome, a filial que trabalha e e-mail para receber as propostas de vagas. A gerência deve poder emitir relatórios com relação a localidade, idade, nível de escolaridade e certificações de seus candidatos (currículos via PDF), para definir planos de carreiras e outros atributos de gestão.
Para facilitar o trabalho do departamento de RH na seleção de candidatos, as vagas são separadas de acordo com a filial, área de atuação, cargos, carga horária e modelo presencial, híbrido ou remoto. Para um melhor trabalho do time do comercial o sistema deve conseguir emitir um relatório instantâneo com as qualificações dos candidatos para entrar nas licitações que exigem um certo nível profissional dos mesmos. O nível de qualificação dos funcionários seguirá as especificações de mercado, ou seja, júnior, pleno e sênior nas áreas relacionadas a desenvolvimento e análise  e sênior para as demais áreas. O sistema deve fornecer uma página sobre a empresa contendo a história da empresa, clientes, visão, parceiros e certificações, o sistema deve ter um horário pré-determinado para manutenções no horário da madrugada entre 02:00am e 04:00am. O sistema deve permitir que o usuário encontre uma filial próxima pesquisando com base em um CEP inserido e filtrar as vagas pela filial, as filiais pré-existentes a essa documentação são a matriz no Brasil, filial no México, Filial na China e filial em Portugal.


### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Protótipo navegavel em Figma<br>

Link:[Protótipo Figma](https://www.figma.com/file/dNvctCDrX3DbqgeguQBRIV/Contrata%C3%A7%C3%A3o?node-id=0%3A1)<br>

![Alt text](https://github.com/jramso/Trab_BD1_2022/blob/master/images/Desktop_Enterprise.png?raw=true "Title")

<!--[Protótipo Figma feito para Empresa GHHL Contratação]()-->
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
<!-- a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? -->
>O sistema proposto `GHHL Contratação` fornecera relatórios sobre os usuários do sistema, vagas e filiais.
<!-- b) 5 principais relatório do sistema proposto! -->
 
> A Empresa `GHHL Contratação` precisa inicialmente dos seguintes relatórios: 
- I: Relatório de todos os usuários do sistema.
    - Engloba todos os funcionarios da empresa, só usuários, gestores e candidatos
- II: Relatório de candidatos cadastrados em vagas.
    - Engloba os candidatos, vagas, cargos e areas.
- III: Relatório de gerentes por filial.
    - engloba gestores, tipos de gestores e filiais.
- IV: Relatório de todas as vagas.
    - engloba vagas, cargos e areas.
- V: Relátorio de usuários cujo o endereço mais proximos de cada filial.
    engloba usuários, endereço, logradouro, bairro, cidade, estado, país.
- VI: Relatório geral de todo o sistema:
    engloba todas as relações do sistema, melhor vista em [4.3]().
    
<!-- A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa. -->

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 

- :open_file_folder: <a href="https://github.com/jramso/Trab_BD1_2022/blob/master/Files/GHHL.xlsx?raw=true">Tabela - Empresa GHHL</a>

<details>
    <summary>Show table</summary>

| id | postal_zip | numero | fk_cidade_id | fk_bairro_id | fk_estado_id | fk_pais_id | fk_logradouro_id | id (1) | nome_bairro      | fk_id_cidade | nome_cidade  | fk_id_estado | nome_estado | fk_id_pais | nome_pais | nome             | complemento | fk_tipo_logradouro | nome_tipo       | abreviatura | telefone_fixo  | nome_fantasia                    | fk_endereco | fk_gestor | email                        | fk_usuario_id | id_tipo | nome (1)      | data_nasc  |
|----|------------|--------|--------------|--------------|--------------|------------|------------------|--------|------------------|--------------|--------------|--------------|-------------|------------|-----------|------------------|-------------|--------------------|-----------------|-------------|----------------|----------------------------------|-------------|-----------|------------------------------|---------------|---------|---------------|------------|
| 35 | 61235-319  | 2063   | 16           | 2            | 8            | 10         | 4                | 20     | Ibirapuera       | 16           | São paulo    | 8            | São Paulo   | 10         | Brasil    | Venice Boulevard | Apartamento | 11                 | Segunda Avenida | SEG         | 3338-7731      | GHHL Enterprise Ltda             | 35          | 12        | fusce@ghhlcontato.br         | 20            | 1       | Mariam Dennis | 2006-11-03 |
| 27 | 735226     | 2817   | 21           | 15           | 4            | 7          | 2                | 16     | Zócalo           | 21           | Puebla       | 4            | Puebla      | 7          | México    | Venice Boulevard | Casa        | 13                 | Balneário       | BAL         | 726-6714       | GHHL Eget Venenatis   LLC        | 27          | 17        | augue.eu@ghhlcontato.de      | 16            | 2       | Abdul Goff    | 2022-02-08 |
| 39 | 81230      | 1090   | 13           | 5            | 1            | 7          | 11               | 20     | La choca         | 13           | Villahermosa | 1            | Tabasco     | 7          | México    | Venice Boulevard | Bloco       | 6                  | Esplanada       | ESP         | 1-828-555-2009 | GHHL Velit   Incorporated        | 39          | 12        | fusce@ghhlcontato.br         | 20            | 1       | Mariam Dennis | 2006-11-03 |
| 37 | 51159      | 4520   | 27           | 21           | 10           | 7          | 1                | 15     | Centro Histórico | 27           | Morélia      | 10           | Michoacán   | 7          | México    | Rua Alecrim      | Edificio    | 5                  | Avenida         | AV          | 1-673-775-0419 | GHHL Volutpat Nunc   Company     | 37          | 14        | vitae.posuere@ghhlcontato.co | 15            | 2       | Yuri Lewis    | 2000-10-18 |
| 25 | 412688     | 1789   | 24           | 17           | 7            | 2          | 1                | 14     | Tie xi           | 24           | Shenyang     | 7            | Dōngběi     | 2          | China     | Rua Alecrim      | Edificio    | 5                  | Avenida         | AV          | 1-331-248-1609 | GHHL Liaoning Metus   Foundation | 25          | 16        | nunc.est@ghhlcontato.cn      | 14            | 3       | Macon Gill    | 2003-03-08 |
    
</details>   

### 5.MODELO CONCEITUAL<br>


![Alt text](https://github.com/jramso/Trab_BD1_2022/blob/master/images/Modelo_Conceituall.png?raw=true "Modelo Conceitual 2.0")
    
#### 5.1 Validação do Modelo Conceitual
- [Grupo01]: [Josué Ramos, Luiz Sampaio, Mateus Lannes]
- [Grupo02]: [Hanna Letícia de Jesus, Higor Campos, Lucas de Souza]

#### 5.2 Descrição dos dados

|     **Entidade**    |  **Atributos** | **Descrição**                                                                               |
|:-------------------:|:--------------:|---------------------------------------------------------------------------------------------|
|     **USUARIO**     |        -       | **Tabela que armazena usuários que utilizam o sistema**                                     |
|        **-**        |       id       | codigo identificador do usuário                                                             |
|        **-**        |      nome      | nome de um usuário exemplo: Judas de Jesus                                                  |
|        **-**        |    data_nasc   | data de nascimento do usuário de onde se calcula a idade                                    |
|    **CANDIDATO**    |        -       | **Tabela que armazena dados de USUARIO que são Candidatos as vagas**                        |
|        **-**        |  id_candidato  | código identificador de candidato                                                           |
|        **-**        |    descricao   | informacoes de escolaridade do candidato descritas                                          |
|       **VAGA**      |        -       | **Tabela que armazena dados de vagas Cadastradar pelo gestor de Contratação**               |
|        **-**        |       id       | codigo identificador da vaga                                                                |
|        **-**        |  carga_horaria | tempo que será exercido ao contratado na vaga                                               |
|      **CARGO**      |        -       | **Tabela que armazena os cargos de funcionários e os cargos abertos a candidatura de VAGA** |
|        **-**        |       id       | identificador do cargo                                                                      |
|        **-**        |   nome_cargo   | nome do cargo que esta sendo ofertado a vaga ex: programador PHP                            |
|       **AREA**      |        -       | **Tabela que armazena as areas profissionais de VAGA**                                      |
|        **-**        |       id       | identificador de area                                                                       |
|        **-**        |    nome_area   | nome de uma area exemplo: programação                                                       |
|      **GESTOR**     |        -       | **Tabela que armazena dados USUARIO que são gestores**                                      |
|        **-**        |       id       | identificador de gestor                                                                     |
|        **-**        |      email     | email de domínio do gestor para contato                                                     |
|   **TIPO_GESTOR**   |        -       | **Tabela que armazena os tipos possíveis de GESTOR**                                        |
|        **-**        |     id_tipo    | identificador do tipo do gestor                                                             |
|        **-**        |    nome_tipo   | nome do tipo do gestor ex: gestor de filial, gestor de vagas, gestor geral.                 |
|      **FILIAL**     |        -       | **Tabela que armazena as filiais da empresa (e a sede)**                                    |
|        **-**        |       id       | identificador de filial                                                                     |
|        **-**        | telefone_unico | telefone de contato da filial                                                               |
|        **-**        |  nome_fantasia | nome da filial separado do nome da sede                                                     |
|     **ENDERECO**    |        -       | **Tabela que armazena endereços de usuarios e filiais**                                     |
|        **-**        |       id       | identificador de endereço                                                                   |
|        **-**        |     numero     | numero do endereco                                                                          |
|        **-**        |       cep      | codigo de endereço postal                                                                   |
|      **BAIRRO**     |        -       | **Tabela que armazena os bairros de ENDERECO**                                              |
|        **-**        |       id       | identificador de bairro                                                                     |
|        **-**        |   nome_bairro  | nome do bairro                                                                              |
|      **CIDADE**     |        -       | **Tabela que armazena cidades de ENDERECO**                                                 |
|        **-**        |       id       | identificador de cidade                                                                     |
|        **-**        |   nome_cidade  | nome da cidade                                                                              |
|      **ESTADO**     |        -       | **Tabela que armazena estados de ENDERECO**                                                 |
|        **-**        |       id       | identificador de estado                                                                     |
|        **-**        |   nome_estado  | nome do estado UF                                                                           |
|       **PAIS**      |        -       | **Tabela que armazena países de ENDERECO**                                                  |
|        **-**        |       id       | identificador de pais                                                                       |
|        **-**        |    nome_pais   | nome do país                                                                                |
|    **LOGRADOURO**   |        -       | **Tabela que armazena logradouros de ENDERECO**                                             |
|        **-**        |       id       | identificador de logradouro                                                                 |
|        **-**        |      nome      | nome do logradouro                                                                          |
|    **COMPLEMENTO**  |        -       | **Tabela que armazena complementos de LOGRADOURO**                                          |
|        **-**        |       id       | identificador de complemento                                                                |
|        **-**        |   complemento  | complemento do logradouro ex: casa, apartamento                                             |
| **TIPO_LOGRADOURO** |        -       | **Tabela que armazena os tipos possiveis de LOGRADOURO**                                    |
|        **-**        |       id       | identificador de tipo de logradouro                                                         |
|        **-**        |    nome_tipo   | nome do tipo de logradouro                                                                  |
|        **-**        |   abreviatura  | abreviatura ou sigla do nome do tipo de logradouro                                          |



<!-- EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br> -->


### 6 MODELO LÓGICO<br>
<!-- a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade) -->
        
![Alt text](https://github.com/jramso/Trab_BD1_2022/blob/master/images/GHHL.png?raw=true "Modelo Logico")

### 7 MODELO FÍSICO<br>
<!-- a) inclusão das instruções de criacão das estruturas em SQL/DDL (criação de tabelas, alterações, etc..)  -->
- :computer: [Link Colab: GGHL_fisico](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/Colab/GHHL_Contrat.ipynb#)

<!-- ![SQL](https://github.com/jramso/Trab_BD1_2022/blob/master/SQL/GHHL_Fisico.sql?raw=true) -->

- <details> <summary>Codigo modelo fisico</summary>

    ```sql
    /* GHHL_Fisico: */

    CREATE TABLE USUARIO (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(50),
        data_nasc date
    );

    CREATE TABLE VAGA (
        ID SERIAL PRIMARY KEY,
        carga_horaria Integer,
        data_fim date,
        FK_GESTOR_Id integer,
        FK_CARGO Integer,
        FK_AREA Integer
    );

    CREATE TABLE CANDIDATO (
        descricao VARCHAR(50),
        qualificacao VARCHAR(50),
        id_candidato Integer,
        FK_USUARIO_id Integer,
        PRIMARY KEY (id_candidato)
    );
    CREATE TABLE GESTOR (
        Id SERIAL PRIMARY KEY,
        email VARCHAR(50),
        FK_USUARIO_id Integer,
        id_tipo Integer
    );

    CREATE TABLE CARGO (
        id SERIAL PRIMARY KEY,
        nomeCargo VARCHAR(50)
    );

    CREATE TABLE BAIRRO (
        id SERIAL PRIMARY KEY,
        nome_bairro VARCHAR(50)
    );

    CREATE TABLE CIDADE (
        id Serial PRIMARY KEY,
        nome_cidade VARCHAR(50)
    );

    CREATE TABLE ENDERECO (
        id SERIAL PRIMARY KEY,
        cep varchar(10),
        numero Integer,
        FK_CIDADE_id Integer,
        FK_BAIRRO_id Integer,
        FK_ESTADO_id Integer,
        FK_PAIS_id Integer,
        FK_LOGRADOURO_id Integer
    );

    CREATE TABLE AREA (
        id Serial PRIMARY KEY,
        nome_area VARCHAR(50)
    );

    CREATE TABLE LOGRADOURO (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(50),
        FK_TIPO_LOGRADOURO Integer,
        FK_ID_COMPLEMENTO Integer
    );
    
    CREATE TABLE COMPLEMENTO (
        id SERIAL PRIMARY KEY,
        complemento VARCHAR(45)
    );

    CREATE TABLE POSSUI (
        fk_USUARIO_id Integer,
        fk_ENDERECO_FILIAL_PAIS_id integer
    );

    CREATE TABLE TIPO_LOGRADOURO (
        id SERIAL PRIMARY KEY,
        nome_tipo VARCHAR(50),
        abreviatura VARCHAR(50)
    );

    CREATE TABLE ESTADO (
        id SERIAL PRIMARY KEY,
        nome_estado VARCHAR(50)
    );

    CREATE TABLE FILIAL (
        id SERIAL PRIMARY KEY,
        telefone_fixo VARCHAR(50),
        nome_fantasia VARCHAR(50),
        FK_ENDERECO Integer,
        FK_GESTOR Integer
    );

    CREATE TABLE PAIS (
        id SERIAL PRIMARY KEY,
        nome_pais VARCHAR(50)
    );

    CREATE TABLE CONCORRE (
        id SERIAL PRIMARY KEY,
        FK_CANDIDATO Integer,
        FK_VAGA Integer
    );

    CREATE TABLE TIPO_GESTOR (
        id_tipo SERIAL PRIMARY KEY,
        nome_tipo VARCHAR(50)
    );
    /*FOREIGN KEYS de CARGO,AREA,GESTOR para VAGA*/
    ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_2
        FOREIGN KEY (FK_CARGO)
        REFERENCES CARGO (id);

    ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_1
        FOREIGN KEY (FK_AREA)
        REFERENCES AREA (id);
    ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_3
        FOREIGN KEY (FK_GESTOR_ID)
        REFERENCES GESTOR (ID);

    /*FK de Usuario para candidato*/
    ALTER TABLE CANDIDATO ADD CONSTRAINT FK_CANDIDATO_1
        FOREIGN KEY (FK_USUARIO_id)
        REFERENCES USUARIO (id)
        ON DELETE CASCADE;

    /*FK de USUARIO,TIPO_GESTOR para GESTOR*/
    ALTER TABLE GESTOR ADD CONSTRAINT FK_GESTOR_1
        FOREIGN KEY (FK_USUARIO_id)
        REFERENCES USUARIO (id);
    ALTER TABLE GESTOR ADD CONSTRAINT FK_GESTOR_2
        FOREIGN KEY (id_tipo)
        REFERENCES TIPO_GESTOR (id_tipo);
    
    /*FK de CIDADE,BAIRRO,ESTADO,PAIS,LOGRADOURO para ENDERECO*/
    ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
        FOREIGN KEY (FK_CIDADE_id)
        REFERENCES CIDADE (id)
        ON DELETE RESTRICT;
    
    ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_3
        FOREIGN KEY (FK_BAIRRO_id)
        REFERENCES BAIRRO (id)
        ON DELETE RESTRICT;
    
    ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_4
        FOREIGN KEY (FK_PAIS_id)
        REFERENCES PAIS (id);
    
    ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_5
        FOREIGN KEY (FK_ESTADO_id)
        REFERENCES ESTADO (id);
    
    ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_6
        FOREIGN KEY (FK_LOGRADOURO_id)
        REFERENCES LOGRADOURO (id);
    
    /*FK de TIPO_LOGRADOURO para LOGRADOURO*/
    ALTER TABLE LOGRADOURO ADD CONSTRAINT FK_LOGRADOURO_2
        FOREIGN KEY (FK_TIPO_LOGRADOURO)
        REFERENCES TIPO_LOGRADOURO (id);
    
    ALTER TABLE LOGRADOURO ADD CONSTRAINT FK_LOGRADOURO_3
        FOREIGN KEY (FK_ID_COMPLEMENTO)
        REFERENCES COMPLEMENTO (id);

    
    /*altera o nome da tabela POSSUI para USUARIO_ENDERECO*/
    ALTER TABLE POSSUI RENAME TO usuario_endereco;
    -- FK de usuario para usuario_endereco
    ALTER TABLE usuario_endereco ADD CONSTRAINT FK_Possui_1
        FOREIGN KEY (fk_USUARIO_id)
        REFERENCES USUARIO (id)
        ON DELETE RESTRICT;

    -- renomeia a coluna de usuario_endereco
    ALTER TABLE usuario_endereco 
        RENAME COLUMN fk_endereco_filial_pais_id TO fk_endereco_id;
    -- FK de endereco para usuario_endereco
    ALTER TABLE usuario_endereco ADD CONSTRAINT FK_Possui_2
        FOREIGN KEY (fk_ENDERECO_id)
        REFERENCES endereco (ID);

    /*FK de GESTOR,ENDERECO para FILIAL*/
    ALTER TABLE FILIAL ADD CONSTRAINT FK_FILIAL_2
        FOREIGN KEY (FK_ENDERECO)
        REFERENCES ENDERECO (id);
    ALTER TABLE FILIAL ADD CONSTRAINT FK_FILIAL_3
        FOREIGN KEY (FK_GESTOR)
        REFERENCES GESTOR (id);


    /*Arrumar*/
    /*FK de CANDIDATO,VAGA para Concorre*/

    ALTER TABLE CONCORRE ADD CONSTRAINT FK_CONCORRE_2
        FOREIGN KEY (FK_CANDIDATO)
        REFERENCES candidato (id_candidato);

    ALTER TABLE CONCORRE ADD CONSTRAINT FK_CONCORRE_3
        FOREIGN KEY (FK_VAGA)
        REFERENCES VAGA (id);

    --if necessary
    -- ALTER TABLE CANDIDATO DROP COLUMN FK_USUARIO_ID;
    --ALTER TABLE candidato ADD COLUMN FK_USUARIO_id integer;
    alter table estado add COLUMN FK_id_pais INTEGER;
    alter table cidade add COLUMN FK_id_estado INTEGER;
    alter table bairro add COLUMN FK_id_cidade INTEGER;

    ALTER TABLE estado ADD CONSTRAINT FK_pais_1
        FOREIGN KEY (FK_id_pais)
        REFERENCES pais (id);

    ALTER TABLE cidade ADD CONSTRAINT FK_estado_1
        FOREIGN KEY (FK_id_estado)
        REFERENCES estado (id);
    ALTER TABLE bairro ADD CONSTRAINT FK_cidade_1
        FOREIGN KEY (FK_id_cidade)
        REFERENCES cidade (id);

    alter table candidato add COLUMN fk_escolaridade INTEGER;
   

    ```
    </details>
        
       
### 8 INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

- <details>
    <summary>Inserts</summary>

    ```sql
    -- Active: 1667587040170@@127.0.0.1@5432@postgres@public

    --alter table vaga drop CONSTRAINT FK_VAGA_1;
    -- br,com,mx,de,es,uk,co,fr,cn,pt,id dominios paises

    insert into area (nome_area)VALUES
    ('programacao'),
    ('segurança'),
    ('banco de dados'),
    ('desenvolvimento de software'),
    ('marketing'),
    ('design'),
    ('analista de sistemas'),
    ('Engenheiro'),
    ('analista de compras'),
    ('assistente fiscal');

    insert into cargo (nomecargo)VALUES
    ('Junior'),
    ('Pleno'),
    ('Senior'),
    ('Master'),
    ('Especialista');

    INSERT INTO usuario (nome,data_nasc)
    VALUES
    ('Ebony Robertson','1990-06-20'),
    ('Thaddeus Wheeler','2006-05-13'),
    ('Kelly Rivas','2015-06-28'),
    ('Macon Gill','2003-03-08'),
    ('Yuri Lewis','2000-10-18'),
    ('Abdul Goff','2022-02-08'),
    ('Porter Cotton','1993-03-01'),
    ('Tad Roth','2007-01-01'),
    ('Lysandra Mclaughlin','1994-08-27'),
    ('Mariam Dennis','2006-11-03'),
    ('Darius Mcgowan','2001-01-11'),
    ('Allen Avery','1980-02-21'),
    ('Lee Lambert','2001-03-6'),
    ('Evelyn Jarvis','1980-10-26'),
    ('Cassidy Case','1975-10-7'),
    ('Phelan Dillon','1987-12-1'),
    ('Isaiah Pace','1999-01-27'),
    ('Fuller Tate','1981-07-11'),
    ('Gwendolyn Acosta','1977-02-6'),
    ('Dalton Crane','1988-11-2');



    
    INSERT INTO pais (nome_pais)
    VALUES
    ('Portugal'), --
    ('China'), --
    ('Germany'), --
    ('Indonesia'), --
    ('United Kingdom'),--
    ('France'), --
    ('México'), --
    ('Spain'), --
    ('Colombia'),
    ('Brasil'), --
    ('United States of America'); --


    INSERT INTO estado (nome_estado,fk_id_pais)
    VALUES 
    ('Tabasco',7), -- Mexico ++
    ('Maranhão',10), -- Brasil ++
    ('Baja California',7), -- México ++
    ('Puebla',7), -- MExico ++
    ('Colorado',11), -- EUA ++
    ('Minnesota')11, -- EUA ++
    ('Dōngběi',2), -- China ++
    ('São Paulo',10), --Brasil ++
    ('Utah',11), -- EUA ++
    ('Michoacán',7), -- Mexico 
    ('Catalunha',8), -- portugal ++
    ('Baviera',3), --Alemanha ++
    ('Suffolk',5), -- Reino Unido - Inglaterra ++
    ('Córsega',6), -- França ++
    ('Java',4), -- Indonésia ++
    ('Lisboa',1), --portugal ++
    ('Boyacá',9), -- Colombia ++
    ('California',11); -- EUA ++




    INSERT INTO cidade (nome_cidade, fk_id_estado)
    VALUES
    ('Tunja',17), -- COLOMBIA capital de [BOYACA] ++++
    ('Denver',5), -- EUA Capital do [Colorado] ++++
    ('Villahermosa',1),--MEXICO Capital de [TABASCO] ++++
    ('Munique',12), -- ALEMANHA Capital de [Baviera] ++++
    ('Ipswich',13), -- UK INGLATERRA centro Adiministrativo de [Suffolk]++
    ('São paulo',8), -- Brasil capital de [SAO PAULO] ++++
    ('Jacarta',15), --INDONESIA capital de [JAVA]++++
    ('Ajaccio',14), -- FRANÇA capital de [CORSEGA] ++++(Cidade de napoleao)
    ('Lisboa',16), -- PORTUGAL capital de [LISBOA] ++++
    ('São Luís',2), -- BRASIL capital do [MARANHÃO] ++
    ('Puebla',4), -- MÉXICO capital de [PUEBLA]++
    ('Mexicali',3), -- MÉXICO capital de [BAJA CALIFORNIA] ++
    ('Saint Paul',6), -- EUA capital de [MINESSOTA] ++++
    ('Shenyang',7), -- CHINA capital de [DONGBEI] ++
    ('Salt Lake City',9), --EUA capital de [UTAH] ++
    ('Sacramento',18), --EUA capital da [CALIFORNIA] ++
    ('Morélia',10),--MÉXICO capital de [MICHOACAN]
    ('Barcelona',11), --ESPANHA capital da [CATALUNHA]
    ('Los Angeles',18); -- EUA cidade da [CALIFORNIA] ++++

    INSERT INTO bairro (nome_bairro, fk_id_cidade) VALUES
    ('Vila Mariana',16), --Sao paulo [Sao Paulo]
    ('Ibirapuera',16), -- Sao paulo [São paulo]
    ('Santo António',19), -- Portugal [Lisboa]
    ('Alfama',19), -- Portugal  [Lisboa]
    ('La choca',13),  -- Mexico [Villahermosa]
    ('Summit Hill',23), -- EUA Minnesota [Saint Paul]
    ('Chinatown',29), -- EUA California [Los angeles]
    ('Maldonado',11), -- COLOMBIA [Tunja]
    ('Lower Downtown',12), -- EUA [Denver]
    ('Sendling',14), -- Alemanha [Munique]
    ('Ipswich',15), -- UK Inglaterra [Suffolk ipswich]
    ('Glodok Chinatown',17), -- Indonesia JAVA [JACARTA]
    ('Bairro Genoves',18), -- França  Corsega [Ajaccio] 
    ('Renascença',20), --Brasil Maranhao[São Luís]
    ('Zócalo',21), -- México Puebla [PUEBLA]
    ('Éguia',22), --México Baja California [Mexicali]
    ('Tie xi',24), -- China Dongbei [Shenyang]
    ('Salt Lake Valley',25), -- EUA Salt Lake City [UTAH]
    ('River Park',26), -- EUA California [Sacramento]
    ('El Gòtic',28), -- Espanha barcelona [Catalunha]
    ('Centro Histórico',27); -- México Michoacan [morelia]

    insert into tipo_gestor(nome_tipo) VALUES
    ('Geral'),
    ('Vagas'),
    ('Filial');

    INSERT INTO gestor(email,fk_usuario_id,id_tipo)
    VALUES
    ('auctor@ghhlcontato.de',18,3),
    ('fusce@ghhlcontato.br',20,2),
    ('vestibulum.massa.rutrum@ghhlcontato.cn',19,2),
    ('vitae.posuere@ghhlcontato.co',15,2),
    ('aenean.eget@ghhlcontato.pt',17,2),
    ('nunc.est@ghhlcontato.cn',14,3),
    ('augue.eu@ghhlcontato.de',16,2),
    ('cras.convallis@ghhlcontato.uk',11,3),
    ('egestas.lacinia@ghhlcontato.id',12,2),
    ('nec.enim@ghhlcontato.fr',13,2);

    update gestor set id_tipo=1 where id=12;


    /*
    Dados retirados de:
    http://suporte.quarta.com.br/LayOuts/eSocial/Tabelas/Tabela_20.htm
    Acesso em 05/11/2022
    */
    INSERT INTO tipo_logradouro (nome_tipo,abreviatura)
    VALUES
    ('Rodovia','R'),
    ('Condomínio','CON'),
    ('Viaduto','VD'),
    ('Morro','MRO'),
    ('Avenida','AV'),
    ('Esplanada','ESP'),
    ('Vila','VL'),
    ('Lagoa','LGA'),
    ('Pátio','PAT'),
    ('Recanto','REC'),
    ('Segunda Avenida','SEG'),
    ('Viela','VLA'),
    ('Balneário','BAL');


    INSERT INTO logradouro (nome,fk_id_complemento,fk_tipo_logradouro)
    VALUES
    ('Rua Alecrim',1,5),
    ('Venice Boulevard',2,13),
    ('Rua Branca Donadio',3,1),
    ('Venice Boulevard',4,11),
    ('Sheng Li Nan Jie',2,7),
    ('Sheng Li Nan Jie',1,9),
    ('Freemont Street',1,11),
    ('16th Street Mall',4,3),
    ('16th Street Mall',4,12),
    ('Av. Calouste Gulbenkian',2,8),
    ('Venice Boulevard',3,6),
    ('Av. Calouste Gulbenkian',4,12),
    ('Jenderal Sudirman',3,6),
    ('Rua Branca Donadio',2,1),
    ('Travessa Vinte e Sete',1,12),
    ('Travessa Vinte e Sete',3,8),
    ('Travessa Vinte e Sete',5,1),
    ('16th Street Mall',1,2),
    ('Jenderal Sudirman',2,1),
    ('Rua Branca Donadio',5,7);
    
    INSERT INTO complemento (complemento)
    VALUES
    ('Edificio'),
    ('Casa'),
    ('Bloco'),
    ('apartamento'),
    ('Residencial');


    INSERT INTO endereco (cep,numero,fk_cidade_id,fk_bairro_id,fk_estado_id,fk_pais_id,fk_logradouro_id)
    VALUES
    ('143337',1316,24,17,7,2,5),
    ('FG58 5NR',4542,15,11,13,5,1),
    ('86948',3618,12,9,5,11,1),
    ('38429',4252,29,7,18,11,1),
    ('412688',1789,24,17,7,2,1),
    ('38788-24667',1565,18,13,14,6,1),
    ('735226',2817,21,15,4,7,2),
    ('NK7B 4WE',4718,15,11,13,5,13),
    ('327658',1465,14,10,12,3,1),
    ('757957',2564,14,10,12,3,7),
    ('1066',2858,19,3,16,1,1),
    ('425467',4982,11,18,17,9,15),
    ('43945',1998,28,20,11,8,1),
    ('64635',3926,14,10,12,3,1),
    ('61235-319',2063,16,2,8,10,4),
    ('10110',2029,17,12,15,4,1),
    ('51159',4520,27,21,10,7,1),
    ('727857',2202,21,15,4,7,20),
    ('81230',1090,13,5,1,7,11),
    ('66108',3064,18,13,14,6,1);

    -- Codigos postais https://codigo-postal.co/pt-br/mexico

    INSERT INTO filial (telefone_fixo,nome_fantasia,fk_endereco,fk_gestor)
    VALUES
    ('3338-7731','GHHL Enterprise Ltda',35,12),
    ('726-6714','GHHL Eget Venenatis LLC',27,17),
    ('1-828-555-2009','GHHL Velit Incorporated',39,12),
    ('1-673-775-0419','GHHL Volutpat Nunc Company',37,14),
    ('1-331-248-1609','GHHL Liaoning Metus Foundation',25,16);

    INSERT INTO usuario_endereco (fk_usuario_id,fk_endereco_id)
    VALUES
    (13,33),
    (17,40),
    (15,23),
    (18,30),
    (18,22),
    (20,31),
    (16,29),
    (15,34),
    (12,23),
    (15,29);



    INSERT INTO candidato (descricao,id_candidato,fk_usuario_id,fk_escolaridade)
    VALUES
    ('pede, malesuada vel, venenatis vel,',1,21,4),
    ('aliquam adipiscing lacus. Ut nec',2,22,4),
    ('Nam ligula elit, pretium et,',3,23,3),
    ('Etiam gravida molestie arcu. Sed',4,24,2),
    ('tellus. Suspendisse sed dolor. Fusce',5,25,2),
    ('felis orci, adipiscing non, luctus',6,26,3),
    ('Praesent eu nulla at sem',7,27,2),
    ('lacus, varius et, euismod et,',8,28,4),
    ('neque sed dictum eleifend, nunc',9,29,4),
    ('pellentesque, tellus sem mollis dui,',10,30,3);

    INSERT INTO vaga (carga_horaria,fk_gestor_id,fk_cargo,fk_area)
    VALUES
    ('36',14,3,8),
    ('25',14,4,1),
    ('30',20,4,3),
    ('30',18,1,2),
    ('25',13,1,8),
    ('40',17,2,3),
    ('36',17,2,4),
    ('44',16,3,6),
    ('44',17,4,5),
    ('30',18,5,8);

    INSERT INTO concorre (fk_vaga,fk_candidato)
    VALUES
    (8,1),
    (1,8),
    (3,9),
    (2,7),
    (8,2),
    (3,2),
    (4,5),
    (6,9),
    (5,9),
    (8,4)

    ```

</details>

### 9 TABELAS E PRINCIPAIS CONSULTAS<br>

- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb)
#### 9.1 CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas)


># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2 CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)
- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=crYVyeuI5sem)

#### 9.3 CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4 CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.
- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=eT-RFvf7oc_H)

#### 9.5 INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização
 - :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=84IO3mP33d1q)



#### 9.6 CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
 - :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=k0FdGu2g5-Dp)

#### 9.7 CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção
 - :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=3yd2Kae5HS4l)

#### 9.8 CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=I7pI0QWHgaoA)

#### 9.9 CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=v_-La9-dlDhe)

#### 9.8 CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
#### 9.10 SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção
- :computer: [Link do Colab](https://colab.research.google.com/github/jramso/Trab_BD1_2022/blob/master/Files/ColabGHHL_Contrat.ipynb#scrollTo=xjhDpcmlenqC)

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")



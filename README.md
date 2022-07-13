# MySQL
Projeto de Banco de Dados para Armazenamento de Informações sobre COVID-19

    1. Introdução

A Importância e disponibilidade de dados é crucial para o enfrentamento de pandemias e da construção de uma sociedade mais transparente, equânime e justa para todos durante o controle de emergências de saúde pública e econômica. É fundamental entender, ainda, qual a vantagem e funcionalidade específica que um banco de dados pode oferecer para controlar tais emergências. Assim, as formas de armazenamento e uso dos dados devem ser otimizadas para atender às demandas e nortear corretamente as decisões que serão tomadas. Neste sentido, este trabalho visa a criação de um Banco de Dados Relacional, utilizando MySQL(8.0) [1], para armazenagem e análise de dados sobre pacientes da COVID-19. Desta forma, objetivamos criar uma ferramenta capaz de relacionar o número de casos e óbitos confirmados. Para análise e verificação da integridade do Banco de Dados adicionaremos alguns códigos SQL para análises iniciais.


    2. Objetivos

Criação de um banco de dados relacional [2-5] na plataforma MySQL que proporcione uma análise dos dados envolvendo a região, idade e comorbidade dos pacientes que foram à óbito devido à COVID-19. 


    3.Desenvolvimento do Banco de Dados

Durante a análise dos dados necessários para o desenvolvimento do banco de dados, avaliamos o mini-mundo do problema. Destacamos a importância de como um hospital poderia gerenciar as entradas e saídas de indivíduos com COVID-19, através da alta médica ou do óbito do paciente. Desta forma, observando quais os dados que geralmente são requisitados, selecionamos: o nome do indivíduo, idade, endereço, telefone, sexo e peso. Um segundo grupo de informações diz respeito à existência de comorbidade prévia, se está infectado com Coronavírus, se houve óbito ou alta médica, e se foi curado.
Desta forma, a disposição das relações entre as entidades pode ser observada na figura 01. Como pode ser observado, o conjunto de informações foi ajustado em duas entidades: Paciente (com chave primária: Paciente_ID) e Boletim Médico (com chave primária: Boletim_ID). As relações entre as entidades Paciente-Boletim Médico é  (1:1).

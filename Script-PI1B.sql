use mydb;

select * from paciente;
select * from boletim_medico;

# inserindo os pacientes no banco de dados

INSERT INTO paciente 
(Paciente_ID, Nome, Idade, Endereco, Telefone, Peso, Sexo)
VALUES
(DEFAULT,'Pedro Oliveira','45','Rua Acarajé,Casa 26,Jardim Europa,Goiânia, GO','62-99999-8888','89.7','M'),
(DEFAULT,'Yuki Matsuo','67','Av. Sucinto, Apt 101, Ed. Morena, Vila Brasilia, Goiânia, GO','62-77777-5555','79.8','F'),
(DEFAULT,'Alice Martins','62','Rua Rio Branco,Casa 02-B, Setor Esmeralda,Goiânia, GO', '62-66666-2121','84.6','F'),
(DEFAULT,'Romário Nobrega','59','Rua Jeep, lote 10,casa 14, Setor Moraes,Goiânia, GO','62-99924-6890','69.7','M'),
(DEFAULT,'Paulo Fernandez','78','Rua Carambola, Casa 23, Jardim São Jorge,Goiânia, GO','62-99962-8561','80.4','M'),
(DEFAULT,'Zuleide Farias','65','Av. São Paulo, Resd. Tirulipa, Apt.304,Goiânia, GO','62-96299-1778','71.1','F'),
(DEFAULT,'Renato Cachoeira','47','Rua Marciano, Casa 408, Setor Garavelo,Goiânia, GO','62-96659-8863','74.9','M'),
(DEFAULT,'Monaliza Senches','68','Rua Sabiá, Casa 7,Lote 2, Vila São Pedro,Goiânia, GO','62-99738-1828','98.3','F'),
(DEFAULT,'Sergio Jacinto','82','Rua Rui Barbosa, Lote 15, Setor Cata Vento, GO','62-99859-4888','82.2','M'),
(DEFAULT,'Suzi Austein','74','Av. Goiás, Resd. Vida Boa, Apt.502,Setor Central, Goiânia, GO','62-99670-8348','68.5','F'),
(DEFAULT,'Liz Maria','66','Av. Cascavel, 70,Setor Universitário, Goiânia, GO','62-99670-4338','62.0','F'),
(DEFAULT,'Maria Luiza','35','Av. 23, 55,,Setor Vila Nova, Goiânia, GO','62-99764-1538','61.3','F'),
(DEFAULT,'Ana Caldas Lucia','54','Av. 124, 44B,Setor Guanabara, Goiânia, GO','62-99873-1937','55.2','F'),
(DEFAULT,'Maria Joana Borges','67','Av. A, 90, Setor Serrinha, Goiânia, GO','62-99114-1509','56.8','F'),
(DEFAULT,'Joana Lúcia Almeida','87','Av. Leste, 11, Setor Coimbra, Goiânia, GO','62-99865-1538','51.9','F'),
(DEFAULT,'Renato Borges','37','Av. Coronel, 10, Setor Campinas, Goiânia, GO','62-99971-9988','86.8','M'),
(DEFAULT,'Lúcio Almeida','55','Av. Huston, 176, Setor Alphavile, Goiânia, GO','62-98971-1156','56.8','M'),
(DEFAULT,'Agnaldo Ricardo','57','Av. Intermediária, 40B, Setor Nova Vila, Goiânia, GO','62-99971-9181','66.9','M'),
(DEFAULT,'Marcos Agamenon','61','Av. Industrial, 544, Setor Bairro Feliz, Goiânia, GO','62-98471-8911','76.1','M'),
(DEFAULT,'Luiz Pontes Boto','57','Av. Intermediária, 40B, Setor Nova Vila, Goiânia, GO','62-99971-9181','66.9','M');

# inserindo os relatórios de cada paciente no banco de dados

INSERT INTO boletim_medico
(Boletim_ID, Comorbidade, Infectado, Obito, Curado, paciente_Paciente_ID)
VALUES
(DEFAULT,NULL,'S','N','S', '1'),
(DEFAULT,'Intolerância a glicose','S','N','S', '2'),
(DEFAULT,'Insuficiência Cardiaca Congestiva','S','S',NULL, '3'),
(DEFAULT,NULL,'S','N','S', '4'),
(DEFAULT,'Apneia Obstrutiva do sono','S','N','S', '5'),
(DEFAULT,'Diabetes tipo 2','S','N','S', '6'),
(DEFAULT,'Hipertensão Arterial Sistemica','S','N','N', '7'),
(DEFAULT,NULL,'S','N','N', '8'),
(DEFAULT,'Obesidade,IMC Elevado','S','S',NULL, '9'),
(DEFAULT,'Hipertensão Arterial','S','S',NULL, '10'),
(DEFAULT,NULL,'S','N','S', '11'),
(DEFAULT,'Diabetes tipo 2','S','N','S', '12'),
(DEFAULT,'Obesidade,IMC Elevado','S','S',NULL, '13'),
(DEFAULT,'Apneia Obstrutiva do sono','S','N','S', '14'),
(DEFAULT,'Diabetes tipo 2','S','N','S', '15'),
(DEFAULT,NULL,'S','N','S', '16'),
(DEFAULT,NULL,'S','N','S', '17'),
(DEFAULT,'Insuficiência Cardíaca Congestiva','S','S',NULL, '18'),
(DEFAULT,'Hipertensão Arterial','S','S',NULL, '19'),
(DEFAULT,NULL,'S','N','S', '20');

# análises para o trabalho

select distinct Nome, Sexo, Obito from paciente, boletim_medico
where Obito = 'N' and Sexo = 'F';

select distinct Obito, Comorbidade from paciente, boletim_medico
where Obito = 'S';

select distinct count(*) Obito from boletim_medico
where Comorbidade is not null and Obito = 'S';

select distinct Nome, Idade, Curado from paciente, boletim_medico
where Curado = 'S' and Idade >= 60;

select distinct Nome, Idade, Obito, Infectado from boletim_medico, paciente 
where Obito = 'S' and Idade >=60 order by Idade asc;


/* CRIANDO BANCO DE DADOS */

CREATE DATABASE PROJETO;

/* CONECTANDO AO BANCO DE DADOS */

USE PROJETO;

/* CRIANDO TABELA */

CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);
/* MOSTRAR TABELAS */

SHOW TABLES;

/* DESCOBRINDO A ESTRUTUDA DA TABELA */

DESC CLIENTE;

/* FORMA 1 - OMITINDO AS TABELAS*/

INSERT INTO CLIENTE VALUES('JOAO','M', 'JOAO@GMAIL.COM', 988638273,'22923110','MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						  
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',22222222222);

/* O COMANDO SELECT 
selecao projecao e juncao
*/

SELECT NOW() as DATA_HORA, 'JOAO CARLOS' AS ALUNO;

SELECT 'JOAO CARLOS';

SELECT 'BANCO DE DADOS';

/* ALIAS DE COLUNAS */


SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

/* APENAS PARA FINS ACADEMICOS */

SELECT * FROM CLIENTE;

/* FILTRANDO DADOS COM WHERE E LIKE */

SELECT NOME, TELEFONE FROM CLIENTE;

/* FILTRANDO */

SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';

/* UTILIZANDO O LIKE */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

/* CARACTER CORINGA % -> QUALQUER COISA */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';

/* OR - OU */

SHOW DATABASES;

USE PROJETO;

SELECT * FROM CLIENTE;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' OR ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';

/* AND - E */

SELECT NOME, SEXO, ENDERECO  FROM CLIENTE
WHERE 
SEXO = 'M' AND ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';

/* COUNT(*), GROUP BY, PERFORMANCE COM OPERADORES
LOGICOS */

/* CONTANDO OS REGISTROS DE UMA TABELA */

SELECT COUNT(*) AS "Quantidade de Registros da Tab. Cliente" FROM CLIENTE;

/* OPERADOR GROUP BY */

SELECT SEXO, COUNT(*) FROM CLIENTE;

SELECT * FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;

/* PERFORMANCE EM OPERADORES LOGICOS */

/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT(*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE
GROUP BY SEXO;

SELECT CIDADE, COUNT(*) FROM CLIENTE
GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE SEXO = 'F'
OR CIDADE = 'RIO DE JANEIRO';

SITUACAO - TRATANDO COM E / AND
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE CIDADE = 'RIO DE JANEIRO'
AND SEXO = 'F';


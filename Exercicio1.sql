/* CRIANDO DATABASE*/
CREATE DATABASE LIVRARIA;

/* SELECIONANDO O BANCO DE DADOS */
USE LIVRARIA;

/* CRIANDO A TABELA LIVROS */
CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10,2),
	UF CHAR(2),
	ANO INT(4)
);
	
	
/* COLOCANDO DADOS NA TABELA */	
INSERT INTO LIVROS(LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);

INSERT INTO LIVROS (LIVRO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,UF,ANO) VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

/* MOSTRANDO A TABELA */
select * from LIVROS;

/* MOSTRANDO NOME DO LIVRO E O NOME DA EDITORA */
SELECT LIVRO, EDITORA FROM LIVROS;

/* MOSTRANDO NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO */
SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

/* MOSTRANDO NOME DO AUTOR, NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO */
SELECT AUTOR, SEXO,LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

/* MOSTRANDO NOME DO LIVRO E A QUANTIDADE DE PAGINAS DOS LIVROS PUBLICADOS POR AUTORAS DO SEXO FEMININO */
SELECT LIVRO, PAGINAS FROM LIVROS 
WHERE SEXO = 'F';

/* MOSTRANDO NOME DA AUTORA, NOME DO LIVRO E A QUANTIDADE DE PAGINAS DOS LIVROS PUBLICADOS POR AUTORAS DO SEXO FEMININO */
SELECT AUTOR,LIVRO, PAGINAS FROM LIVROS 
WHERE SEXO = 'F';

/* MOSTRANDO O NOME DO LIVRO E O VALOR DOS LIVROS DAS EDITORAS DE SAO PAULO */
SELECT LIVRO, VALOR FROM LIVROS
WHERE UF = 'SP';

/* MOSTRANDO O NOME DO LIVRO, O VALOR E A UF DOS LIVROS DAS EDITORAS DE SAO PAULO */
SELECT LIVRO, VALOR, UF FROM LIVROS
WHERE UF = 'SP';

/* MOSTRANDO OS AUTORES DO SEXO MASCULINO QUE SEUS LIVROS FORAM PUBLICADOS POR SAO PAULO OU RIO DE JANEIRO */
SELECT AUTOR, SEXO, UF FROM LIVROS
WHERE SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');

/* MOSTRANDO OS AUTORES DO SEXO MASCULINO QUE SEUS LIVROS FORAM PUBLICADOS POR SAO PAULO OU RIO DE JANEIRO E QUE TENHAM MAIS DE 100 PAGINAS */
SELECT AUTOR, SEXO, UF FROM LIVROS
WHERE SEXO = 'M' AND UF = 'SP' AND paginas > 100;

	
	
/* exercicio */

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

SELECT COUNT(*) FROM FUNCIONARIOS;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

--21 | filmes 53 | roupas

SELECT * from funcionarios
where departamento = 'Roupas' or departamento = 'Filmes';

SELECT COUNT(*), departamento FROM funcionarios
group by departamento;

SELECT COUNT(*), departamento
FROM funcionarios
group by departamento
order by 1;

WHERE departamento = 'Filmes' OR departamento = 'Roupas'


--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *

--Feminino 491 ocorrencias
select count(*), sexo from funcionarios
group by sexo;

--52 | Lar  21 | Filmes
select count(*), departamento
from funcionarios
group by departamento;

SELECT * FROM funcionarios
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

--484 | Masculino
select count(*), sexo from funcionarios
group by sexo;

--47 | Jardim 
select count(*), departamento
from funcionarios
group by departamento;

SELECT * FROM funcionarios
WHERE SEXO = 'Masculino' OR DEPARTAMENTO = 'Jardim';







CREATE DATABASE exercicio2;

USE exercicio2;

create table funcionarios
  (
      idFuncionario integer,
      nome varchar(100),
      email varchar(200),
      sexo varchar(10),
      departamento varchar(100),
      admissao varchar(10),
      salario integer,
      cargo varchar(100),
      idRegiao int
  );

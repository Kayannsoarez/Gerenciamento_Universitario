CREATE OR REPLACE VIEW resumo_projeto AS
SELECT "Nome" AS nome_professor,"Nome_Financiador" AS
nome_financiador,"Orcamento" AS orcamento,total_alunos
FROM
(
	(
	(SELECT "ID_Professor","ID_Projeto" FROM "Prof_Projeto" WHERE "Cargo" = 'Gerente') AS t1
	INNER JOIN
	(SELECT "ID","Nome" FROM "Professor") AS t2
	on t1."ID_Professor" = t2."ID"
	) AS t3
	INNER JOIN
	(SELECT "ID" AS profID,"Orcamento","Nome_Financiador" FROM "Projetos")
AS t4
	ON t4.profID = t3."ID_Projeto"
) AS t5
INNER JOIN
(SELECT "ID_Projeto", COUNT("ID") AS total_alunos FROM "Estudante_Projeto"
GROUP BY "ID_Projeto") AS t6
ON t6."ID_Projeto" = t5."ID_Projeto"

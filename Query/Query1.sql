SELECT subquery."ID_Projeto"
FROM (
	SELECT est_proj."ID_Projeto", COUNT(est_proj."ID_Estudante") AS total_alunos
	ROM public."Estudante_Projeto" AS est_proj
	GROUP BY est_proj."ID_Projeto"
) AS subquery
WHERE total_alunos > 5
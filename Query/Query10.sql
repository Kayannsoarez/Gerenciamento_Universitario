SELECT proj."Numero"
FROM public."Projetos" AS proj
WHERE proj."ID" = (
	SELECT subquery."ID_Projeto"
	FROM (
		SELECT est_proj."ID_Projeto", COUNT(*) AS total
		FROM public."Estudante_Projeto" as est_proj
		GROUP BY est_proj."ID_Projeto"
		ORDER BY total DESC
		LIMIT 1
	) AS subquery
)

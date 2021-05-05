SELECT dept."Nome"
FROM public."Departamento" AS dept
	WHERE dept."ID" IN (
		SELECT subquery."ID_Departamento" FROM (
			SELECT prof_dept."ID_Departamento", COUNT(*) AS total
			FROM public."Prof_Departamento" AS prof_dept
			GROUP BY prof_dept."ID_Departamento"
			ORDER BY total DESC
			LIMIT 1
		) AS subquery
)

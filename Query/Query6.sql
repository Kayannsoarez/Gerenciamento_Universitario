SELECT prof."Nome"
FROM public."Professor" AS prof
WHERE prof."ID" IN (
	SELECT prof_proj."ID_Professor" AS prof_id
	FROM public."Prof_Projeto" AS prof_proj
	WHERE prof_proj."Cargo" = 'Gerente'
	INTERSECT
	SELECT dept."Chefe" AS prof_id
	FROM public."Departamento" AS dept
)

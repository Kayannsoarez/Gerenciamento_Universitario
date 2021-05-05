select dept."Nome"
from public."Departamento" as dept
	where dept."ID" = (
	select subquery."Departamento"
	from (
		select est."Departamento", count(*) as total
		from public."Estudante_Pos" as est
		group by est."Departamento"
		order by total desc
		limit 1
	) as subquery
)

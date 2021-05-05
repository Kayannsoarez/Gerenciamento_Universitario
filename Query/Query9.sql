SELECT t4."Nome"
from
(
select t2."ID_Departamento", AVG(t1."Idade") as media_idade
from
(
(select prof."ID", prof."Idade" from public."Professor" AS prof) t1
inner join
(select prof_dept."ID_Professor", prof_dept."ID_Departamento" from
public."Prof_Departamento" as prof_dept) t2
on t1."ID" = t2."ID_Professor"
)
group by t2."ID_Departamento"
having AVG(t1."Idade") > 45
) t3
inner join
(select dept."ID", dept."Nome" from public."Departamento" as dept) t4
on t3."ID_Departamento" = t4."ID"

select prof."Nome" as Chefe, dept."Nome" as Departamento
from
(select dept."Chefe", dept."Nome" from public."Departamento" as dept) dept
left join
(select prof."ID", prof."Nome" from public."Professor" as prof) prof
on dept."Chefe" = prof."ID"

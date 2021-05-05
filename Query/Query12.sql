select alu."Nome", dept."Nome"
from
(select dept."ID", dept."Nome" from public."Departamento" as dept) dept
left join
(select est."Departamento", est."Nome" from public."Estudante_Pos" as est) alu
on dept."ID" = alu."Departamento"

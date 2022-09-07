CREATE TABLE public."Estudante_Pos"
(
	"ID" integer NOT NULL,
	"CPF" character(20) NOT NULL,
	"Nome" character(100) NOT NULL,
	"Idade" integer NOT NULL,
	"Programa_Pos" character(100) NOT NULL,
	"Departamento" integer NOT NULL,
	CONSTRAINT "Estudante_Pos_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Estudante_Pos_FK" FOREIGN KEY ("Departamento")
	REFERENCES public."Departamento" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Estudante_Pos"
	OWNER to postgres;

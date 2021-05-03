CREATE TABLE public."Estudante_Projeto"
(
	"ID" integer NOT NULL,
	"ID_Estudante" integer NOT NULL,
	"ID_Projeto" integer NOT NULL,
	"Supervisor" integer NOT NULL,
	CONSTRAINT "Estudante_Projeto_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Est_Proj_Supervisor_FK" FOREIGN KEY ("Supervisor")
	REFERENCES public."Professor" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID,
	CONSTRAINT "Est_Projeto_FK" FOREIGN KEY ("ID_Estudante")
	REFERENCES public."Estudante_Pos" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID,
	CONSTRAINT "Projeto_Est_FK" FOREIGN KEY ("ID_Projeto")
	REFERENCES public."Projetos" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Estudante_Projeto"
	OWNER to postgres;

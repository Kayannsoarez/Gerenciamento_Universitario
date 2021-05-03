CREATE TABLE public."Prof_Projeto"
(
	"ID" integer NOT NULL,
	"ID_Professor" integer NOT NULL,
	"ID_Projeto" integer NOT NULL,
	"Cargo" character(100) COLLATE pg_catalog."default" NOT NULL,
	CONSTRAINT "Prof_Projeto_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Prof_Projeto_FK" FOREIGN KEY ("ID_Professor")
	REFERENCES public."Professor" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID,
	CONSTRAINT "Projeto_Prof_FK" FOREIGN KEY ("ID_Projeto")
	REFERENCES public."Projetos" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Prof_Projeto"
	OWNER to postgres;
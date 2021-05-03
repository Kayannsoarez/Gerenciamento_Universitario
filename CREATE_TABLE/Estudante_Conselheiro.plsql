CREATE TABLE public."Estudante_Conselheiro"
(
	"ID" integer NOT NULL,
	"ID_Estudante" integer NOT NULL,
	"ID_Conselheiro" integer NOT NULL,
	CONSTRAINT "Estudante_Conselheiro_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Conselheiro_Estudante_FK" FOREIGN KEY ("ID_Conselheiro")
	REFERENCES public."Estudante_Pos" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID,
	CONSTRAINT "Estudante_Conselheiro_FK" FOREIGN KEY ("ID_Estudante")
	REFERENCES public."Estudante_Pos" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Estudante_Conselheiro"
	OWNER to postgres;

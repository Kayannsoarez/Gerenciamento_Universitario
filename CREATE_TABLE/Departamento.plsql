CREATE TABLE public."Departamento"
(
	"ID" integer NOT NULL,
	"Numero_Dept" integer NOT NULL,
	"Nome" character(100) NOT NULL,
	"Escritorio_Principal" character(200) NOT NULL,
	"Chefe" integer NOT NULL,
	CONSTRAINT "Departamento_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Departamento_FK" FOREIGN KEY ("Chefe")
	REFERENCES public."Professor" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public."Departamento"
	OWNER to postgres;

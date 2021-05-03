CREATE TABLE public."Prof_Departamento"
(
	"ID_Professor" integer NOT NULL,
	"ID_Departamento" integer NOT NULL,
	"Carga_Horaria" number(10,2) NOT NULL,
	"ID" integer NOT NULL,
	CONSTRAINT "Prof_Departamento_PK" PRIMARY KEY ("ID"),
	CONSTRAINT "Prof_Departamento_FK" FOREIGN KEY ("ID_Professor")
	REFERENCES public."Professor" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID,
	CONSTRAINT "Departamento_Prof_FK" FOREIGN KEY ("ID_Departamento")
	REFERENCES public."Departamento" ("ID") MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
	NOT VALID
);

TABLESPACE pg_default;

ALTER TABLE public."Prof_Departamento"
	OWNER to postgres;

CREATE TABLE public."Projetos"
(
	"ID" integer NOT NULL,
	"Numero" integer NOT NULL,
	"Nome_Financiador" character(100) NOT NULL,
	"Data_Inicial" date NOT NULL,
	"Data_Final" date NOT NULL,
	"Orcamento" integer NOT NULL,
	CONSTRAINT "Projetos_PK" PRIMARY KEY ("ID")
);

TABLESPACE pg_default;

ALTER TABLE public."Projetos"
	OWNER to postgres;

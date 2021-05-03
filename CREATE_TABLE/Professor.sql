CREATE TABLE public."Professor"
(
	"ID" integer NOT NULL,
	"CPF" character(20) NOT NULL,
	"Nome" character(100) NOT NULL,
	"Idade" integer NOT NULL,
	"Especialidade" character(200) NOT NULL,
	"Posicao" character(100) NOT NULL,
	CONSTRAINT "Professor_PK" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE public."Professor"
	OWNER to postgres;
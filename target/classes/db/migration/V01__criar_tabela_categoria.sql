CREATE TABLE categoria (
	codigo SERIAL PRIMARY KEY NOT NULL,
	nome CHARACTER(50) NOT NULL
);

INSERT INTO categoria (nome) VALUES ('Lazer');
INSERT INTO categoria (nome) VALUES ('Alimentação');
INSERT INTO categoria (nome) VALUES ('Farmácia');
INSERT INTO categoria (nome) VALUES ('Outros');
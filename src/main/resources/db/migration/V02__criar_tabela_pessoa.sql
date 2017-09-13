CREATE TABLE pessoa (
	codigo SERIAL PRIMARY KEY NOT NULL,
	nome CHARACTER(30) NOT NULL,
	ativo BOOLEAN NOT NULL,
	logradouro CHARACTER(50),
	numero CHARACTER(5),
	complemento CHARACTER(30),
	bairro CHARACTER(20),
	cep CHARACTER(8),
	cidade CHARACTER(20),
	estado CHARACTER(2)
);

INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado)
	VALUES ('Elias', TRUE, 'Rua Santos Dumonte', '12', 'Aldeota', '45622098', 'Fortaleza', 'CE');

INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado)
	VALUES ('Maiara', TRUE, 'Rua Barbara de Alencar', '87', 'Aldeota', '12345678', 'Fortaleza', 'CE');
	
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado)
	VALUES ('Daniel', TRUE, 'Rua Godofredo Maciel', '32', 'Maraponga', '45622098', 'Fortaleza', 'CE');
	
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado)
	VALUES ('Salu', FALSE, 'Rua 13 de Maio', '90', 'Maraponga', '45622098', 'Fortaleza', 'CE');
	
INSERT INTO pessoa (nome, ativo, logradouro, numero, bairro, cep, cidade, estado)
	VALUES ('Mônica', FALSE, 'Rua Jaguaretama', '888', 'Aldeota', '00000000', 'Fortaleza', 'CE');
CREATE TABLE lancamento (
	codigo SERIAL PRIMARY KEY NOT NULL,
	descricao CHARACTER(50) NOT NULL,
	data_vencimento TIMESTAMP WITH TIME ZONE NOT NULL,
	data_pagamento TIMESTAMP WITH TIME ZONE,
	valor REAL,
	observacao CHARACTER(100),
	tipo CHARACTER(20) NOT NULL,
	codigo_categoria INTEGER,
	codigo_pessoa INTEGER,
	FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo), 
	FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
);


INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Salário mensal', 'now', null, 6500.00, 'Distribuição de lucros', 'RECEITA', 1, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Bahamas', 'tomorrow', null, 100.32, null, 'DESPESA', 2, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Top Club', 'yesterday', null, 120, null, 'RECEITA', 3, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('CEMIG', 'now', null, 110.44, 'Geração', 'RECEITA', 3, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('DMAE', 'tomorrow', null, 200.30, null, 'DESPESA', 3, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Extra', 'yesterday', null, 1010.32, null, 'RECEITA', 4, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Bahamas', 'now', null, 500, null, 'RECEITA', 1, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Top Club', 'tomorrow', null, 400.32, null, 'DESPESA', 4, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Despachante', 'yesterday', null, 123.64, 'Multas', 'DESPESA', 3, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Pneus', 'now', null, 665.33, null, 'RECEITA', 4, 1);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Café', 'tomorrow', null, 8.32, null, 'DESPESA', 1, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Eletrônicos', 'yesterday', null, 2100.32, null, 'DESPESA', 4, 4);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Instrumentos', 'now', null, 1040.32, null, 'DESPESA', 1, 3);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Café', 'tomorrow', null, 4.32, null, 'DESPESA', 3, 2);
INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa) values ('Lanche', 'yesterday', null, 10.20, null, 'DESPESA', 3, 1);
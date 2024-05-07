-- Create
-- CREATE DATABASE secao04;

-- Create
CREATE TABLE tipos_produto(
	codigo INTEGER PRIMARY KEY AUTOINCREMENT,
	descricao TEXT NOT NULL
);

-- Create
CREATE TABLE produtos(
	codigo INTEGER PRIMARY KEY AUTOINCREMENT, 
	descricao TEXT NOT NULL,
	preco REAL NOT NULL,
	codigo_tipo INTEGER REFERENCES tipos_produto(codigo) NOT NULL
);


-- Alter
ALTER TABLE tipos_produtos ADD peso REAL;

-- Verificando se o novo campo foi realmente adicionado
SELECT * FROM tipos_produtos;


-- Drop 
DROP TABLE tipos_produtos;


-- Não existe o comando abaixo no SQLite. Basta deletar o arquivo do banco de dados;
DROP DATABASE secao04;

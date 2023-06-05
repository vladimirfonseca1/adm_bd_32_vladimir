CREATE DATABASE livraria_senai;

USE livraria_senai;

CREATE TABLE editora (
	id INT,
    nome VARCHAR(45),
    PRIMARY KEY(id)
);

CREATE TABLE livros (
	id INT,
    titulo varchar(60) NOT NULL,
	ideditora INT,
    PRIMARY KEY(id),
    FOREIGN KEY(ideditora) REFERENCES editora(id)
);

CREATE TABLE autor (
	id INT AUTO_INCREMENT,
    nome VARCHAR(60),
    PRIMARY KEY(id)
);

CREATE TABLE livro_autor (
	id_autor INT,
    id_livro INT,
    PRIMARY KEY(id_autor, id_livro),
    FOREIGN KEY(id_autor) REFERENCES autor(id),
    FOREIGN KEY(id_livro) REFERENCES livros(id)
);

INSERT INTO editora VALUES(1, "Companhia Das Letras");
INSERT INTO autor VALUES(null, "Yuval Noah Harari");
INSERT INTO livros VALUES(1, "Sapiens: Uma breve história da humanidade", 1);
INSERT INTO livro_autor VALUES(1, 1);

select * from livros;
select * from editora;
select * from autor;
select * from livro_autor;


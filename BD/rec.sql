USE livrariaRecuperacao20261;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DECIMAL(6, 2),
    precoVenda DECIMAL(6, 2),
    CONSTRAINT fk_livro_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
    CONSTRAINT fk_livro_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);

ALTER TABLE livro ADD COLUMN quantidade VARCHAR(100);
ALTER TABLE livro modify column quantidade int;
desc livro;
SELECT * FROM livro;
SELECT * FROM genero;
SELECT * FROM autor;
SELECT quantidade,fkgenero FROM livro;

INSERT INTO autor VALUES
	(DEFAULT,'Colleen Hoover');
    
INSERT INTO autor VALUES
	(DEFAULT,'Matt Haig');

INSERT INTO autor VALUES
	(DEFAULT,'C.J. Tudor'),
    (DEFAULT,'Uketsu');

INSERT INTO autor VALUES
	(DEFAULT,'Coco Mellors');
    
INSERT INTO livro VALUES
	(DEFAULT, 'É Assim Que Acaba', 1, 2, '40', '65', 30),
    (DEFAULT, 'É Assim Que Começa', 1, 2, '40', '50', 30),
    (DEFAULT, 'Verity', 1, 2, '40', '50', 30);
    
INSERT INTO livro VALUES
	(DEFAULT, 'A Biblioteca da Meia Noite', 2, 2, '40', '45', 27);
    
INSERT INTO livro VALUES
	(DEFAULT, 'O Homem de Giz', 3, 1, '30', '45', 17),
    (DEFAULT, 'O que aconteceu com Annie', 3, 1, '75', '80', 20),
    (DEFAULT, 'Casas estranhas: Casas estranhas Vol. 1', 4, 1, '32', '35', 10),
    (DEFAULT, 'Casas estranhas: Casas estranhas Vol. 1', 4, 1, '35', '40', 12);
    
INSERT INTO livro VALUES
	(DEFAULT, 'As Irmãs Blue', 5, 2, '44', '60', 35),
    (DEFAULT, 'Cleopatra e Frankenstein', 5, 2, '43', '55', 14);

SELECT genero.nome as Gênero,
SUM(quantidade) as Quantidade
 FROM livro
	JOIN genero ON genero.id = fkGenero
GROUP BY genero.nome;

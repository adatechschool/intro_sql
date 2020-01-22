CREATE database IF NOT EXISTS publication;

SHOW DATABASES;
USE publication;
SHOW tables;

DROP TABLE IF EXISTS public;
DROP TABLE IF EXISTS auteur;

CREATE TABLE IF NOT EXISTS auteur(
	id_auteur INT NOT NULL AUTO_INCREMENT,
    nom_auteur VARCHAR(30) NOT NULL,
    PRIMARY KEY ( id_auteur )
);

CREATE TABLE IF NOT EXISTS public(
	id_publication INT NOT NULL AUTO_INCREMENT,
    titre_publication VARCHAR(100) NOT NULL,
    auteur_id INT,
    FOREIGN KEY (auteur_id) REFERENCES auteur(id_auteur),
    PRIMARY KEY ( id_publication )
);

SHOW tables;
DESCRIBE public;

INSERT INTO auteur (nom_auteur)
VALUES
('Lydia'),
('Mohamed');

INSERT INTO public (id_publication, titre_publication, auteur_id)
VALUES 
(2, 'promo nr 1', 1),
(3, 'ada est cool', 2),
(4, 'toto', 1);

SELECT * FROM auteur;
SELECT * FROM public;

SELECT titre_publication FROM public WHERE auteur_id = 1;


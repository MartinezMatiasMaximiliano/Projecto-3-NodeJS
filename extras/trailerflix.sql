CREATE TABLE `categorias` (
	`idCategoria` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`categoria` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`idCategoria`)
);

CREATE TABLE `actores` (
	`idPersona` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` varchar(500) NOT NULL UNIQUE,
	PRIMARY KEY (`idPersona`)
);

CREATE TABLE `generos` (
	`idGenero` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`genero` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`idGenero`)
);

CREATE TABLE `catalogo` (
	`idCatalogo` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`idPoster` INT UNIQUE,
	`titulo` varchar(255) NOT NULL UNIQUE,
	`idCategoria` INT NOT NULL,
	`resumen` TEXT(600) NOT NULL,
	`temporadas` INT,
	`trailer` varchar(255),
	PRIMARY KEY (`idCatalogo`)
);

CREATE TABLE `catalogo_generos` (
	`id` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`idCatalogo` INT NOT NULL,
	`idGenero` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `catalogo_repartos` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idCatalogo` INT NOT NULL,
	`idPersona` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `posters` (
	`idPoster` INT NOT NULL AUTO_INCREMENT,
	`dirPoster` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`idPoster`)
);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk0` FOREIGN KEY (`idPoster`) REFERENCES `posters`(`idPoster`);

ALTER TABLE `catalogo` ADD CONSTRAINT `catalogo_fk1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias`(`idCategoria`);

ALTER TABLE `catalogo_generos` ADD CONSTRAINT `catalogo_generos_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo`(`idCatalogo`);

ALTER TABLE `catalogo_generos` ADD CONSTRAINT `catalogo_generos_fk1` FOREIGN KEY (`idGenero`) REFERENCES `generos`(`idGenero`);

ALTER TABLE `catalogo_repartos` ADD CONSTRAINT `catalogo_repartos_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo`(`idCatalogo`);

ALTER TABLE `catalogo_repartos` ADD CONSTRAINT `catalogo_repartos_fk1` FOREIGN KEY (`idPersona`) REFERENCES `actores`(`idPersona`);









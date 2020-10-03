CREATE TABLE `Postagem` (
	`id_postagem` INT NOT NULL AUTO_INCREMENT,
	`contato` TEXT NOT NULL AUTO_INCREMENT,
	`portfolio` TEXT NOT NULL,
	`modalidade` varchar(100) NOT NULL,
	`imagem` blob NOT NULL,
	`fk_id_usuario` INT NOT NULL,
	`fk_id_tema` INT NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `Tema` (
	`id_tema` INT NOT NULL,
	`titulo` varchar(45) NOT NULL,
	`descricao` TEXT(500) NOT NULL,
	`data` DATE NOT NULL,
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `Usuario` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(55) NOT NULL,
	`email` varchar(55) NOT NULL,
	`senha` varchar(55) NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk0` FOREIGN KEY (`fk_id_usuario`) REFERENCES `Usuario`(`id_usuario`);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk1` FOREIGN KEY (`fk_id_tema`) REFERENCES `Tema`(`id_tema`);


CREATE TABLE `Postagem` (
	`id_postagem` INT NOT NULL AUTO_INCREMENT,
	`contato` TEXT NOT NULL AUTO_INCREMENT,
	`portfolio` TEXT NOT NULL,
	`modalidade` varchar(100) NOT NULL,
	`imagem` blob NOT NULL,
	`id_usuario_` INT NOT NULL,
	`id_tema_` INT NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

CREATE TABLE `Tema` (
	`id_tema` INT NOT NULL,
	`cadastro` BOOLEAN NOT NULL,
	`login` varchar(55) NOT NULL,
	`sobre` TEXT NOT NULL,
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `Usuario` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(55) NOT NULL,
	`email` varchar(55) NOT NULL,
	`senha` varchar(55) NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk0` FOREIGN KEY (`id_usuario_`) REFERENCES `Usuario`(`id_usuario`);

ALTER TABLE `Postagem` ADD CONSTRAINT `Postagem_fk1` FOREIGN KEY (`id_tema_`) REFERENCES `Tema`(`id_tema`);


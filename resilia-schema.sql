CREATE DATABASE IF NOT EXISTS resilia;

USE resilia;

CREATE TABLE `endereco` (
  `endereco_id` INT PRIMARY KEY AUTO_INCREMENT,
  `rua` VARCHAR(80) NOT NULL,
  `bairro` VARCHAR(50) NOT NULL,
  `cep` INT NOT NULL,
  `cidade` VARCHAR(50) NOT NULL,
  `complemento` VARCHAR(40),
  `uf` VARCHAR(2) NOT NULL,
  `pais` VARCHAR(50) NOT NULL
);

CREATE TABLE `curso` (
  `curso_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `duracao` VARCHAR(20) NOT NULL
);

CREATE TABLE `modulo` (
  `modulo_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `qtd_aulas` INT NOT NULL
);

CREATE TABLE `curso_modulo` (
  `cursos_id` INT NOT NULL,
  `modulos_id` INT NOT NULL,
  FOREIGN KEY (`cursos_id`) REFERENCES `curso` (`curso_id`),
  FOREIGN KEY (`modulos_id`) REFERENCES `modulo` (`modulo_id`)
);

CREATE TABLE `status` (
  `status_id` INT PRIMARY KEY AUTO_INCREMENT,
  `frequencia` INT NOT NULL,
  `nota` FLOAT NOT NULL,
  `evasao` ENUM ('ativo', 'inativo') NOT NULL
);

CREATE TABLE `pessoa` (
  `pessoa_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `genero` VARCHAR(30),
  `data_nasc` DATE NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco_id` INT NOT NULL,
  FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`endereco_id`)
);

CREATE TABLE `estudante` (
  `estudante_id` INT PRIMARY KEY AUTO_INCREMENT,
  `senha` VARCHAR(32) NOT NULL,
  `pessoas` INT NOT NULL,
  FOREIGN KEY (`pessoas`) REFERENCES `pessoa` (`pessoa_id`)
);

CREATE TABLE `facilitador` (
  `facilitador_id` INT PRIMARY KEY AUTO_INCREMENT,
  `senha` VARCHAR(32) NOT NULL,
  `frente` ENUM ('hard', 'soft') NOT NULL,
  `pessoas_id` INT NOT NULL,
  FOREIGN KEY (`pessoas_id`) REFERENCES `pessoa` (`pessoa_id`)
);

CREATE TABLE `turma` (
  `turma_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(80) NOT NULL,
  `periodo` ENUM ('manha', 'tarde', 'noite') NOT NULL,
  `curso_id` INT NOT NULL,
  FOREIGN KEY (`curso_id`) REFERENCES `curso` (`curso_id`)
);

CREATE TABLE `facilitador_turma` (
  `facilitador_id` INT NOT NULL,
  `turma_id` INT NOT NULL,
  FOREIGN KEY (`facilitador_id`) REFERENCES `facilitador` (`facilitador_id`),
  FOREIGN KEY (`turma_id`) REFERENCES `turma` (`turma_id`)
);

CREATE TABLE `estudante_turma` (
  `matricula` VARCHAR(7),
  `estudante_id` INT NOT NULL,
  `turma_id` INT NOT NULL,
  `status_id` INT NOT NULL,
  FOREIGN KEY (`estudante_id`) REFERENCES `estudante` (`estudante_id`),
  FOREIGN KEY (`turma_id`) REFERENCES `turma` (`turma_id`),
  FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
);


-- --------------------------------
-- Frontendeiros - Banco de dados
-- By Daniele
-- MIT Licence
--
-- Modela o banco de dados da API do aplicativo.
-- ---------------------------------

-- Apaga o banco de dados caso ele exista.
-- IMPORTANTE! Só faça isso em momento de desenvolvimento.
-- Nunca use esse código em proodução.
DROP DATABASE IF EXISTS frontendeiros;

-- Cria o banco de dados com caracteres utf8 e buscas case-insensitive.
CREATE DATABASE frontendeiros CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Seleciona o banco de dados para as próximas interaç~eos.
USE frontendeiros

-- Cria tabela dos contatos → contacts.
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    status ENUM ('received', 'readed', 'responded', 'deleted') DEFAULT 'received'
);

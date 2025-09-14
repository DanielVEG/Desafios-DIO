-- criação do banco de dados para o cenário de uma oficina
-- drop database os_oficina_desafio;
create database os_oficina_desafio;
use os_oficina_desafio;

CREATE TABLE Cliente (
    idCliente INT auto_increment PRIMARY KEY,
    Nome VARCHAR(45),
    Documento CHAR(14),
    Tipo_documento ENUM('CPF', 'CNPJ'),
    Endereco VARCHAR(255),
    Contato VARCHAR(11),
    Data_nascimento DATE,
    UNIQUE (Documento)
);

CREATE TABLE Veiculos (
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    Cliente_idCliente INT,
    Marca VARCHAR(20),
    Modelo VARCHAR(45),
    Ano_Modelo VARCHAR(9),
    Tipo_de_combustivel ENUM('Gasolina', 'Diesel', 'Etanol', 'Flex', 'GNV', 'Outros'),
    Eletrico TINYINT,
    Kilometragem CHAR(7),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

alter table Veiculos auto_increment=1;


alter table Cliente auto_increment=1;

CREATE TABLE Ordem_de_Servico (
    idOrdem_de_Servico INT auto_increment PRIMARY KEY,
    Status_da_OS VARCHAR(45),
    Valor DECIMAL(10,2),
    Data_conclusao VARCHAR(45),
    Data_emissao VARCHAR(45)
);

alter table Ordem_de_Servico auto_increment=1;


CREATE TABLE Orcamento (
    idPedido INT auto_increment PRIMARY KEY,
    Servico VARCHAR(45),
    Tipo_de_servico ENUM('Transmissão','Balanceamento','Manutenção preventiva', 'Reparos mecânicos', 'Reparos elétricos', 'Funilaria', 'Pintura', 'Lanternagem', 'Manutenção do sistema de Escapamento', 'Manutenção do sistema de arrefecimento', 'Manutenção do sistema de suspensão', 'Manutenção do sistema de direção hidráulica'),
    Descricao VARCHAR(255),
    Data_orcamento DATETIME,
    Valor DECIMAL(10,2),
    Cliente_idCliente INT,
    Ordem_de_Servico_idOrdem_de_Servico INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico)
);

alter table Orcamento auto_increment=1;

CREATE TABLE Equipe_de_mecanico (
    idEquipe_de_mecanico INT auto_increment PRIMARY KEY,
    Codigo VARCHAR(45),
    Nome VARCHAR(45),
    Documento CHAR(14),
    Tipo_documento ENUM('CPF', 'CNPJ'),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45)
);

alter table Equipe_de_mecanico auto_increment=1;

CREATE TABLE Equipe_mecanica_para_avaliacao_do_orcamento (
    Equipe_de_mecanico_idEquipe_de_mecanico INT,
    Orcamento_idPedido INT,
    Orcamento_Cliente_idCliente INT,
    PRIMARY KEY (Equipe_de_mecanico_idEquipe_de_mecanico, Orcamento_idPedido, Orcamento_Cliente_idCliente),
    FOREIGN KEY (Equipe_de_mecanico_idEquipe_de_mecanico) REFERENCES Equipe_de_mecanico(idEquipe_de_mecanico),
    FOREIGN KEY (Orcamento_idPedido) REFERENCES Orcamento(idPedido),
    FOREIGN KEY (Orcamento_Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Pecas (
    idPecas INT auto_increment PRIMARY KEY,
    Identificacao VARCHAR(45),
    Descricao VARCHAR(45),
    Categoria ENUM('Motor', 'Chassi', 'Sistema Elétrico', 'Carroceria', 'Sistema de Escapamento', 'Transmissão', 'Sistema de Combustível', 'Pneu','Sistema de Suspensão','Sistema de direção hidráulica'),
    Tipo ENUM('Novo', 'Genuínas', 'OEM', 'Paralelas', 'Recondicionadas', 'Usadas'), 
    Quantidade INT,
    Valor DECIMAL(10,2)
);

alter table Pecas auto_increment=1;

CREATE TABLE Pecas_para_OS (
    Pecas_idPecas INT,
    Ordem_de_Servico_idOrdem_de_Servico INT,
    Quantidade_OS INT,
    PRIMARY KEY (Pecas_idPecas, Ordem_de_Servico_idOrdem_de_Servico),
    FOREIGN KEY (Pecas_idPecas) REFERENCES Pecas(idPecas),
    FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico)
);

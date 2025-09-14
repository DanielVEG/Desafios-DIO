USE os_oficina_desafio;

-- Cliente
INSERT INTO Cliente (Nome, Documento, Tipo_documento, Endereco, Contato, Data_nascimento) VALUES
('Carlos Silva','12345678901','CPF','Rua A, 100 - Belo Horizonte','31995001122','1985-05-20'),
('Mecânica Turbo Ltda','12345678000199','CNPJ','Av. Mecânicos, 300 - Contagem','3133445566',NULL),
('Ana Pereira','98765432100','CPF','Rua das Flores, 45 - BH','31988001144','1990-08-14'),
('João Souza','11122233344','CPF','Rua Goiás, 200 - BH','31977002255','1975-12-03'),
('Concessionária Minas','21987654000188','CNPJ','Av. Amazonas, 5000 - BH','3133449988',NULL),
('Mariana Costa','22211133355','CPF','Rua Alphaville, 55 - Nova Lima','31994003322','1992-03-15'),
('Roberto Lima','33344455566','CPF','Rua Curvelo, 230 - Sete Lagoas','31987006655','1988-09-21'),
('Oficina Rápida ME','33445566000177','CNPJ','Av. Cristiano Machado, 12000 - BH','3133432211',NULL),
('Fernanda Rocha','44455566677','CPF','Rua Lagoa, 400 - Betim','31997002233','1980-07-07'),
('José Azevedo','55566677788','CPF','Rua Uberaba, 122 - BH','31996004455','1983-04-01'),
('Transportadora Minas','55667788000155','CNPJ','Rod. BR 040 KM 30 - BH','3133411223',NULL),
('Luciana Alves','66677788899','CPF','Rua Paraíba, 321 - BH','31998006611','1996-01-28'),
('Thiago Gomes','77788899900','CPF','Rua Ouro Preto, 70 - BH','31995005512','1979-05-10'),
('Maria Cristina','88899900011','CPF','Av. Silva Lobo, 180 - BH','31993005566','1982-02-12'),
('Serviços Automotivos SA','88990011000122','CNPJ','Av. Raja Gabaglia, 2222 - BH','3133456789',NULL),
('Juliana Lopes','99900011122','CPF','Rua Central, 90 - Betim','31999001155','1991-11-30'),
('Pedro Henrique','00011122233','CPF','Rua Tiradentes, 50 - Contagem','31997009922','1986-06-06'),
('Oficina Boa Ltda','11223344000166','CNPJ','Av. Abílio Machado, 900 - BH','3133499887',NULL),
('Cláudia Nunes','11122233399','CPF','Rua Santa Luzia, 45 - BH','31992006677','1993-09-29'),
('André Santos','22233344455','CPF','Rua Rio Grande, 199 - Sete Lagoas','31994002244','1984-10-25');

-- Veiculos

INSERT INTO Veiculos (Cliente_idCliente, Marca, Modelo, Ano_Modelo, Tipo_de_combustivel, Eletrico, Kilometragem) VALUES
(1, 'Fiat', 'Argo', '2022', 'Flex', 0, '085000'),
(2, 'Volkswagen', 'Delivery 8.160', '2020', 'Diesel', 0, '370000'),
(3, 'Hyundai', 'HB20', '2023', 'Flex', 0, '022500'),
(4, 'Chevrolet', 'Onix', '2021', 'Gasolina', 0, '047100'),
(5, 'Renault', 'Master', '2019', 'Diesel', 0, '252000'),
(6, 'Fiat', 'Pulse', '2023', 'Flex', 0, '019800'),
(7, 'Toyota', 'Corolla', '2022', 'Gasolina', 0, '071200'),
(8, 'Ford', 'Transit', '2018', 'Diesel', 0, '430000'),
(9, 'Honda', 'Civic', '2020', 'Gasolina', 0, '063800'),
(10, 'Nissan', 'Versa', '2019', 'Flex', 0, '120300'),
(11, 'Iveco', 'Daily', '2022', 'Diesel', 0, '085900'),
(12, 'Chevrolet', 'Tracker', '2021', 'Flex', 0, '042500'),
(13, 'Renault', 'Duster', '2020', 'Gasolina', 0, '053210'),
(14, 'Peugeot', '208', '2022', 'Flex', 0, '024700'),
(15, 'BYD', 'Han EV', '2024', 'Outros', 1, '003200'),
(16, 'Fiat', 'Mobi', '2023', 'Flex', 0, '010900'),
(17, 'Volkswagen', 'Gol', '2021', 'GNV', 0, '088800'),
(18, 'Ford', 'Ranger', '2019', 'Diesel', 0, '166000'),
(19, 'BMW', 'i3', '2022', 'Outros', 1, '018500'),
(20, 'Chevrolet', 'Montana', '2023', 'Flex', 0, '011400'),
(19, 'Ford', 'Ranger', '2024', 'Diesel', 0, '16000');


-- Pecas

INSERT INTO Pecas (Identificacao, Descricao, Categoria, Tipo, Quantidade, Valor) VALUES
('OL-001','Óleo 5W30','Motor','Novo',100,35.00),
('FILTRO-01','Filtro de óleo','Motor','Novo',50,25.00),
('BAT-60','Bateria 60A','Sistema Elétrico','Novo',20,400.00),
('LAMP-12','Lâmpada 12V','Sistema Elétrico','Paralelas',100,15.00),
('PAST-01','Pastilhas freio','Pneu','Genuínas',60,150.00),
('COR-001','Correia dentada','Motor','OEM',30,180.00),
('BOMBA-01','Bomba de água','Sistema de Combustível','Novo',15,450.00),
('AMORT-01','Amortecedor dianteiro','Sistema de Suspensão','Novo',25,320.00),
('CAT-01','Catalisador completo','Sistema de Escapamento','Novo',10,1250.00),
('VEL-01','Velas de ignição','Motor','Novo',70,90.00),
('PINT-01','Tinta automotiva','Carroceria','Novo',80,220.00),
('BOMBA-02','Bomba combustível elétrica','Sistema de Combustível','Novo',40,550.00),
('RODA-16','Roda aro 16','Pneu','Usadas',20,300.00),
('LAT-01','Peça lateral','Carroceria','Paralelas',10,500.00),
('CAIX-01','Caixa câmbio manual','Transmissão','Recondicionadas',5,2300.00),
('EMBR-01','Kit embreagem','Transmissão','Novo',12,800.00),
('FLUID-01','Fluido direção hidráulica','Sistema de direção hidráulica','Novo',40,90.00),
('ESC-01','Tubo de escapamento','Sistema de Escapamento','Paralelas',18,400.00),
('TINT-02','Tinta preta fosca','Carroceria','Novo',30,120.00),
('FAROIS-01','Farol dianteiro','Sistema Elétrico','Genuínas',20,780.00);

-- Ordem_de_Servico

INSERT INTO Ordem_de_Servico (Status_da_OS, Valor, Data_conclusao, Data_emissao) VALUES
('Aberta',450.00,'2025-01-20','2025-01-18'),
('Concluída',1200.00,'2025-01-11','2025-01-03'),
('Em andamento',800.50,NULL,'2025-02-01'),
('Concluída',350.00,'2025-02-25','2025-02-15'),
('Aberta',560.00,NULL,'2025-03-02'),
('Concluída',980.00,'2025-03-20','2025-03-10'),
('Em andamento',600.00,NULL,'2025-03-21'),
('Concluída',2200.00,'2025-04-05','2025-03-28'),
('Concluída',120.00,'2025-04-15','2025-04-10'),
('Aberta',1340.00,NULL,'2025-04-30'),
('Concluída',450.00,'2025-05-01','2025-04-22'),
('Em andamento',750.00,NULL,'2025-05-17'),
('Concluída',3100.00,'2025-05-25','2025-05-20'),
('Aberta',900.00,NULL,'2025-06-10'),
('Em andamento',480.00,NULL,'2025-06-12'),
('Concluída',1450.00,'2025-06-30','2025-06-20'),
('Aberta',670.00,NULL,'2025-07-02'),
('Concluída',530.00,'2025-07-10','2025-07-03'),
('Em andamento',2300.00,NULL,'2025-07-15'),
('Concluída',990.00,'2025-08-05','2025-07-25');


-- Orcamento

INSERT INTO Orcamento
(Servico, Tipo_de_servico, Descricao, Data_orcamento, Valor, Cliente_idCliente, Ordem_de_Servico_idOrdem_de_Servico) VALUES
('Troca de óleo','Manutenção preventiva','Troca de óleo e filtro','2025-01-10 10:00:00',150.00,1,1),
('Reparo motor','Reparos mecânicos','Correção de falha no motor','2025-01-03 14:00:00',1200.00,3,2),
('Alinhamento','Manutenção do sistema de suspensão','Alinhamento e balanceamento','2025-02-01 09:30:00',200.00,6,3),
('Pintura para-choque','Pintura','Retoque de pintura traseira','2025-02-15 11:00:00',350.00,9,4),
('Troca de embreagem','Reparos mecânicos','Substituição completa do kit de embreagem','2025-03-02 15:00:00',560.00,10,5),
('Revisão geral','Manutenção preventiva','Revisão geral de 50.000 km','2025-03-10 08:00:00',980.00,12,6),
('Troca de bateria','Reparos elétricos','Instalação nova bateria 60A','2025-03-21 08:30:00',600.00,16,7),
('Funilaria lateral','Funilaria','Reparo de amassado lado direito','2025-03-28 13:00:00',2200.00,19,8),
('Troca de lâmpadas','Reparos elétricos','Substituição lâmpadas traseiras','2025-04-10 10:00:00',120.00,14,9),
('Revisão freios','Manutenção preventiva','Troca pastilhas, fluido e checagem','2025-04-30 16:00:00',1340.00,7,10),
('Troca de correia dentada','Reparos mecânicos','Substituição da correia e tensionador','2025-04-22 09:00:00',450.00,17,11),
('Arrefecimento','Manutenção do sistema de arrefecimento','Troca bomba d’água e mangueiras','2025-05-17 11:30:00',750.00,4,12),
('Pintura completa','Pintura','Repintura total carroceria','2025-05-20 14:00:00',3100.00,5,13),
('Troca de amortecedores','Manutenção do sistema de suspensão','Substituição amortecedores dianteiros','2025-06-10 09:00:00',900.00,13,14),
('Troca velas','Reparos mecânicos','Troca velas de ignição','2025-06-12 15:00:00',480.00,18,15),
('Reparo hidráulica','Manutenção do sistema de direção hidráulica','Correção vazamento direção hidráulica','2025-06-20 10:30:00',1450.00,2,16),
('Balanceamento pneus','Balanceamento','Balanceamento rodas aro 16','2025-07-02 16:30:00',670.00,11,17),
('Troca catalisador','Manutenção do sistema de Escapamento','Substituição completa do catalisador','2025-07-03 08:15:00',530.00,15,18),
('Troca transmissão','Transmissão','Caixa câmbio manual substituída','2025-07-15 13:45:00',2300.00,8,19),
('Troca bomba combustível','Reparos mecânicos','Troca bomba combustível elétrica','2025-07-25 12:00:00',990.00,20,20);


-- Pecas_para_OS

INSERT INTO Pecas_para_OS (Pecas_idPecas, Ordem_de_Servico_idOrdem_de_Servico, Quantidade_OS) VALUES
(1,1,4),(2,1,1),(6,11,1),(3,7,1),(4,9,2),
(5,10,1),(7,12,1),(8,14,2),(9,18,1),(10,15,4),
(11,4,2),(12,20,1),(13,17,4),(14,8,1),(15,19,1),
(16,5,1),(17,16,2),(18,18,2),(19,13,5),(20,2,2);

-- Equipe_de_mecanico

INSERT INTO Equipe_de_mecanico (Codigo, Nome, Documento, Tipo_documento, Endereco, Especialidade) VALUES
('EQ001','Mário Andrade','32165498701','CPF','Rua Goiás, 100','Mecânica geral'),
('EQ002','Auto Elétrica Luz','22334455000111','CNPJ','Av. Principal, 50','Elétrica'),
('EQ003','Rodrigo Santos','45678912311','CPF','Rua Afonso Pena, 33','Pintura automotiva'),
('EQ004','Funilaria Rápida','33445566000100','CNPJ','Rua dos Trilhos, 66','Funilaria'),
('EQ005','Paulo Pereira','12332112332','CPF','Rua das Américas, 88','Suspensão'),
('EQ006','João Faria','55332211009','CPF','Rua Independência, 40','Direção hidráulica'),
('EQ007','Oficina Alfa Ltda','22113344000177','CNPJ','Rod. BR 381 KM 15','Revisão geral'),
('EQ008','Pedro Moreira','99887766554','CPF','Rua do Rosário, 12','Motor'),
('EQ009','Clínica Automotiva','11997788000122','CNPJ','Av. Brasil, 500','Multidisciplinar'),
('EQ010','Ricardo Costa','22334455667','CPF','Rua Amazonas, 19','Elétrica'),
('EQ011','Equipe Beta','44665577000199','CNPJ','Rua Petrolina, 78','Direção'),
('EQ012','Gustavo Alves','33445566778','CPF','Rua São Paulo, 45','Freios'),
('EQ013','Fernando Lopes','44556677889','CPF','Rua Montes Claros, 33','Motor'),
('EQ014','Pintura Express','66778899000111','CNPJ','Av. Contagem, 88','Repintura'),
('EQ015','Oficina Delta','55664433000155','CNPJ','Rua Carijós, 21','Transmissão'),
('EQ016','Lucas Araújo','44552211336','CPF','Rua Ipatinga, 47','Sistema de arrefecimento'),
('EQ017','Belo Car Ltda','77889999000122','CNPJ','Av. Pampulha, 71','Lanternagem'),
('EQ018','Marcelo Reis','88990011223','CPF','Rua Ouro, 39','Freios'),
('EQ019','Oficina Pro','10111213000155','CNPJ','Av. Ceará, 110','Serviços completos'),
('EQ020','Diego Martins','99887766533','CPF','Rua Maranhão, 67','Suspensão');

-- Equipe_mecanica_para_avaliacao_do_orcamento

INSERT INTO Equipe_mecanica_para_avaliacao_do_orcamento (Equipe_de_mecanico_idEquipe_de_mecanico, Orcamento_idPedido, Orcamento_Cliente_idCliente) VALUES
(1,1,1),(2,2,3),(3,4,9),(4,8,19),(5,3,6),
(6,16,2),(7,6,12),(8,5,10),(9,13,5),(10,7,16),
(11,11,17),(12,10,7),(13,2,3),(14,13,5),(15,19,8),
(16,12,4),(17,8,19),(18,14,13),(19,17,11),(20,20,20);




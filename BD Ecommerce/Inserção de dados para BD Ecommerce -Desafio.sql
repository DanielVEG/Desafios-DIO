USE ecommerce_desafio;

-- CLIENT
INSERT INTO client (Fname, Minit, Lname, Document, Document_type, contact, Address, Birthday) VALUES
('Maria','A','Silva','12345678901','CPF','21999999999','Rua das Flores, 100, Rio de Janeiro','1990-05-20'),
('João','B','Souza','98765432100','CPF','21988887777','Av Brasil, 2000, São Paulo','1985-09-15'),
('Ana','C','Oliveira','45678912345','CPF','31977776666','Rua Central, 50, Belo Horizonte','1992-07-11'),
('Carlos','D','Santos','32165498700','CPF','41966665555','Rua das Palmeiras, 77, Curitiba','1980-02-05'),
('Beatriz','E','Alves','15975348620','CPF','51955554444','Av Atlântica, 500, Porto Alegre','1998-11-22'),
('Rafael','F','Ferreira','75315985240','CPF','61944443333','Rua A, 45, Brasília','1991-12-31'),
('Juliana','G','Costa','25896314700','CPF','71933332222','Rua B, 90, Salvador','1987-03-10'),
('Fernando','H','Moraes','85274196320','CPF','81922221111','Av das Américas, 900, Recife','1984-04-18'),
('Camila','I','Ramos','96325874100','CPF','11911110000','Rua C, 11, São Paulo','1995-06-25'),
('Lucas','J','Barbosa','74185296320','CPF','11999998888','Av Paulista, 1500, São Paulo','1993-08-30'),
('Mariana','A','Souza','12345688901','CPF','21988887777','Rua das Flores, Rio de Janeiro','1990-05-10'),
('Carlos','B','Pereira','98767432100','CPF','11977776666','Av. Paulista, São Paulo','1985-11-22'),
('Fernanda','C','Lima','32165498722','CPF','71999998888','Rua da Praia, Salvador','1992-08-14'),
('João','D','Oliveira','11222333000199','CNPJ','31955554444','Av. Amazonas, Belo Horizonte','1980-02-02'),
('Patrícia','E','Mendes','44555666000188','CNPJ','61944443333','Setor Comercial, Brasília','1978-12-12'),
('Rafael','F','Ferreira','65498732100','CPF','11922221111','Rua Bela Vista, Curitiba','1995-09-30'),
('Juliana','G','Costa','99887766554','CPF','31933332222','Av. Afonso Pena, Belo Horizonte','1993-06-19'),
('Paulo','H','Almeida','22334455000177','CNPJ','81922223333','Rua Nova, Recife','1975-04-25'),
('Camila','I','Ramos','55667788999','CPF','21944445555','Rua das Palmeiras, Rio de Janeiro','1997-03-03'),
('Fernando','J','Moraes','66778899000155','CNPJ','41911112222','Av. Batel, Curitiba','1982-07-07');

-- PRODUCT
INSERT INTO product (Pname, descriptionProd, classification_kids, category, size, pvalue) VALUES
('Notebook Lenovo','Notebook i5 8GB RAM','0','Eletrônico','15 polegadas',3500.00),
('Mouse Logitech','Mouse sem fio','0','Eletrônico','Pequeno',120.00),
('Teclado Mecânico','Teclado RGB gamer','0','Eletrônico','Padrão',450.00),
('Camiseta Polo','Camiseta algodão','12','Vestuário','M',80.00),
('Boneco Batman','Boneco colecionável','8','Brinquedos','30cm',150.00),
('Sofá 3 lugares','Sofá retrátil cinza','0','Móveis','2m',2500.00),
('Mesa Escritório','Mesa MDF','0','Móveis','1.5m',800.00),
('Chocolate Nestlé','Barra de chocolate 90g','0','Alimentos','90g',8.50),
('Calça Jeans','Calça azul escura','14','Vestuário','42',120.00),
('Monitor Samsung','Monitor 24 polegadas','0','Eletrônico','24 polegadas',950.00),
('Tênis Running Pro','Tênis de corrida leve','12','Vestuário','42',399.90),
('Notebook Ultra 15','Notebook i7 16GB RAM','0','Eletrônico','15 polegadas',2999.00),
('Camiseta Básica','Camiseta algodão','14','Vestuário','M',49.90),
('Smartphone X','Celular 128GB','0','Eletrônico','6.5 polegadas',1999.00),
('Boneca Fashion','Boneca articulada','8','Brinquedos','30 cm',120.00),
('Sofá Retrátil','Sofá 3 lugares cinza','0','Móveis','2m',2500.00),
('Chocolate 70%','Barra 100g','0','Alimentos','100g',12.50),
('Carrinho Controle','Carrinho de controle remoto','10','Brinquedos','40 cm',180.00),
('Jaqueta Couro','Jaqueta masculina couro sintético','16','Vestuário','G',350.00),
('Mesa de Jantar','Mesa 6 lugares madeira','0','Móveis','2x1m',1200.00);

-- SUPPLIER
INSERT INTO supplier (SocialName, CNPJ, contact, address) VALUES
('Tech Distribuidora','11111111000101','21912345678','RJ'),
('Fashion Import','22222222000102','21923456789','SP'),
('Moveis BR','33333333000103','31934567890','BH'),
('Food Service','44444444000104','41945678901','Curitiba'),
('Toys Mania','55555555000105','51956789012','Porto Alegre'),
('Mega Eletrônicos','66666666000106','61967890123','Brasília'),
('Roupas SA','77777777000107','71978901234','Salvador'),
('Casa & Cia','88888888000108','81989012345','Recife'),
('Games World','99999999000109','11990123456','SP'),
('Eletro Fast','10101010000110','21901234567','RJ'),
('Distribuidora Max','11222333000199','21911112222','Rio de Janeiro'),
('Fornecedora Plus','22334455000177','11933334444','São Paulo'),
('Alimentos Brasil','33445566000155','71955556666','Salvador'),
('Tech Import','44556677000144','31977778888','Belo Horizonte'),
('Moveis Ltda','55667788000133','41999990000','Curitiba'),
('Kids Brinquedos','66778899000122','61922223333','Brasília'),
('Moda Express','77889900000111','81944445555','Recife'),
('Eletro Distribuidora','88990011000100','21966667777','Rio de Janeiro'),
('Fashion Group','99001122000199','11988889999','São Paulo'),
('Casa Forte','10111213000188','21955556666','Niterói');

-- PAYMENTS
INSERT INTO payments (idPaymentClient, methodPayment, statuspayment, totalAmount, dateCreate, dateConfirmed) VALUES
(1,'Boleto','Pago',1899.90,'2025-06-02 09:21:09','2025-06-03 12:44:12'),
(2,'Cartão de crédito','Pago',399.00,'2025-06-05 11:17:44','2025-06-05 11:19:19'),
(3,'Boleto','Pendente',49.90,'2025-06-07 16:01:55',null),
(4,'Cartão de débito','Pago',219.90,'2025-06-10 14:30:35','2025-06-10 15:00:23'),
(5,'Dois cartões','Pago',3898.00,'2025-06-12 17:05:15','2025-06-12 17:32:19'),
(6,'Cartão de crédito','Pago',899.00,'2025-06-13 08:17:02','2025-06-13 08:27:17'),
(7,'Boleto','Pago',25.00,'2025-06-15 15:48:01','2025-06-16 09:12:11'),
(8,'Cartão de débito','Estornado',2500.00,'2025-06-16 12:17:41','2025-06-17 14:30:00'),
(9,'Cartão de crédito','Pago',4999.00,'2025-06-17 12:10:33','2025-06-17 12:11:02'),
(10,'Boleto','Pago',12.50,'2025-06-17 13:35:22','2025-06-18 10:44:11'),
(11,'Boleto','Cancelado',199.00,'2025-06-20 12:30:22',null),
(12,'Cartão de crédito','Pago',350.00,'2025-06-22 21:01:03','2025-06-22 21:02:02'),
(13,'Cartão de débito','Pago',119.80,'2025-06-23 08:15:56','2025-06-23 08:18:19'),
(14,'Boleto','Pago',120.00,'2025-06-25 18:30:41','2025-06-26 09:00:00'),
(15,'Cartão de crédito','Pago',599.00,'2025-06-27 13:13:14','2025-06-27 14:44:31'),
(16,'Cartão de crédito','Em processamento',1499.00,'2025-06-28 19:27:31',null),
(17,'Boleto','Pago',46.40,'2025-07-02 10:02:16','2025-07-03 15:12:00'),
(18,'Cartão de débito','Pago',130.00,'2025-07-03 09:22:45','2025-07-03 10:32:30'),
(19,'Boleto','Pago',89.90,'2025-07-05 15:56:44','2025-07-06 11:00:10'),
(20,'Cartão de crédito','Cancelado',1299.99,'2025-07-10 13:45:21',null);

-- PAYMENTDETAILS
INSERT INTO paymentdetails (
    idPaymentPD,
    idPDClient,
    typePayment,
    Amount,
    barcode,
    lineDigitable,
    dateDue,
    datePaid,
    cardBrand,
    maskedNumber,
    cardholderName,
    expirationMonth,
    expirationYear,
    authorizationCode,
    installments
) VALUES
(1, 1, 'boleto', 1899.90, '001234567890123', '00123456789123456789', '2025-06-03', '2025-06-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'crédito', 399.00, NULL, NULL, NULL, '2025-06-05', 'Visa', '1234********5678', 'Maria Souza', 6, 2027, '445560', 1),
(3, 3, 'boleto', 49.90, '001234567890125', '00345345347843', '2025-06-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'débito', 219.90, NULL, NULL, NULL, '2025-06-10', 'Master', '4321********8765', 'Ana Costa', 12, 2026, '782331', 1),
(5, 5, 'crédito', 1999.00, NULL, NULL, NULL, '2025-06-12', 'Elo', '5678********2334', 'Pedro Ferreira', 7, 2024, '997821', 2),
(5, 5, 'crédito', 1899.00, NULL, NULL, NULL, '2025-06-12', 'Master', '1111********9999', 'Pedro Ferreira', 7, 2024, '551012', 2),
(6, 6, 'crédito', 899.00, NULL, NULL, NULL, '2025-06-13', 'Visa', '1212********3434', 'Fernanda Mendes', 1, 2025, '229974', 1),
(7, 7, 'boleto', 25.00, '001234567893322', '001234231298555532', '2025-06-16', '2025-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 'débito', 2500.00, NULL, NULL, NULL, '2025-06-16', 'Elo', '8888********1155', 'Juliana Martins', 9, 2027, '899332', 1),
(9, 9, 'crédito', 4999.00, NULL, NULL, NULL, '2025-06-17', 'Visa', '6666********2323', 'Luciana Barbosa', 4, 2026, '115234', 3),
(10, 10, 'boleto', 12.50, '001249787231787', '793188233470001324', '2025-06-18', '2025-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 'boleto', 199.00, '001384947334823', '120831289493249961', '2025-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 'crédito', 350.00, NULL, NULL, NULL, '2025-06-22', 'Master', '3456********1234', 'Carla Ferraz', 5, 2028, '777654', 1),
(13, 13, 'débito', 119.80, NULL, NULL, NULL, '2025-06-23', 'Visa', '5098********1273', 'Roberto Pereira', 10, 2025, '223333', 1),
(14, 14, 'boleto', 120.00, '001099128374578', '183848394938293484', '2025-06-27', '2025-06-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 'crédito', 599.00, NULL, NULL, NULL, '2025-06-27', 'Master', '2323********3232', 'Marcela Ramos', 8, 2029, '342999', 1),
(16, 16, 'crédito', 1499.00, NULL, NULL, NULL, NULL, 'Elo', '4556********7888', 'Diego Santos', 7, 2025, NULL, 1),
(17, 17, 'boleto', 46.40, '009989239847823', '776621090234781', '2025-07-04', '2025-07-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 'débito', 130.00, NULL, NULL, NULL, '2025-07-03', 'Visa', '2355********8899', 'Isabela Nunes', 12, 2025, '555888', 1),
(19, 19, 'boleto', 89.90, '001283948389482', '929934849388293', '2025-07-06', '2025-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, 'crédito', 1299.99, NULL, NULL, NULL, NULL, 'Visa', '9988********3344', 'Vinícius Reis', 2, 2030, NULL, 1);


-- ORDERS
INSERT INTO orders (idOrderClient, idOrderPayment, OrderStatus, orderDescription, sendValue, PaymentCash, orderDate) VALUES
(1,1,'Entregue','Compra de smartphone',29.90,false,'2025-06-03 13:22:44'),
(2,2,'Confirmado','Tênis Corrida + Bermuda',19.00,true,'2025-06-05 11:22:10'),
(3,3,'Em processamento','Camiseta Algodão','9.90',false,'2025-06-07 16:18:12'),
(4,4,'Cancelado','Vestido longo','17.30',false,'2025-06-10 14:38:00'),
(5,5,'Enviado','Notebook + TV + Fone','99.00',false,'2025-06-12 17:38:59'),
(6,6,'Entregue','Cadeira Gamer','59.00',true,'2025-06-13 09:11:55'),
(7,7,'Entregue','Chocolate + Pizza','6.30',false,'2025-06-15 15:55:00'),
(8,8,'Em processamento','Smart TV 55"',20.00,false,'2025-06-16 12:29:01'),
(9,9,'Confirmado','Notebook Pro (ultrafino)','45.60',false,'2025-06-17 12:14:20'),
(10,10,'Entregue','Barra chocolate','6.20',false,'2025-06-17 14:00:00'),
(11,11,'Estornado','Vestido','10.10',false,'2025-06-20 13:00:00'),
(12,12,'Entregue','Headset BT','14.90',false,'2025-06-22 21:30:10'),
(13,13,'Entregue','Boneca Barbie','5.00',false,'2025-06-23 08:30:00'),
(14,14,'Confirmado','Brinquedo Lego City','19.90',true,'2025-06-25 20:00:22'),
(15,15,'Entregue','Lego City','37.00',false,'2025-06-27 16:11:12'),
(16,16,'Em andamento','Monitor Gamer','50.00',false,'2025-06-28 20:00:00'),
(17,17,'Em processamento','Pizza + Cerveja','4.40',false,'2025-07-02 10:20:18'),
(18,18,'Confirmado','Travesseiro Nasa','12.00',false,'2025-07-03 09:28:15'),
(19,19,'Entregue','Shorts Jeans','7.80',true,'2025-07-05 16:22:59'),
(20,20,'Cancelado','Mesa Madeira','13.00',false,'2025-07-10 14:00:00');

-- PRODUCTORDER
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1,1,1,'Disponivel'),
(2,1,1,'Disponivel'),
(3,3,1,'Disponivel'),
(4,2,2,'Disponivel'),
(5,6,1,'Disponivel'),
(6,4,1,'Disponivel'),
(7,7,1,'Disponivel'),
(8,9,1,'Disponivel'),
(9,5,1,'Sem estoque'),
(10,10,1,'Disponivel');

-- PRODUCTSUPPLIER
INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1,1,500),(1,2,600),(1,10,200),
(2,4,300),(2,9,150),
(3,6,50),(3,7,80),
(4,8,1000),
(5,5,120),(9,3,90),
(2,1,400),(3,2,300),(4,3,500),(5,4,250),(6,5,350),(7,6,150),(8,7,200),(9,8,100),(10,9,450),(2,10,180);

-- SELLER
INSERT INTO seller (SocialName, Absname, Document, Document_type, contact, location) VALUES
('Comercial P&S','P&S Eletro','12345678901','CPF','11999997777','São Paulo - SP'),
('Mix Roupas','Mix Vest','98765432109','CPF','11988886666','Rio de Janeiro - RJ'),
('Brinq Outlet','Fantasia Brinq','11223344556','CPF','31999994444','Belo Horizonte - MG'),
('AlfaTec','Alfa Tecnologia','22334455667788','CNPJ','11977778888','Porto Alegre - RS'),
('Center Moveis','Moveis Center','33445566778','CPF','51999993333','Curitiba - PR'),
('Superfoods','Food Express','44332211000111','CNPJ','11966665555','Salvador - BA'),
('VestBem','BemVest','55667788990','CPF','21988887777','Brasília - DF'),
('TechMart','TechMart Vendas','88887777666','CPF','61999998888','Fortaleza - CE'),
('Ramos Lazer','Lazer Outlet','11223345678','CPF','31955554444','Manaus - AM'),
('Norte Games','Games Norte','99887766112200','CNPJ','41977776666','Belém - PA'),
('Lucena Com','Lucena','11002200330','CPF','71944443333','Recife - PE'),
('CWB Shoes','Shoes CWB','88997766554433','CNPJ','41988882222','Curitiba - PR'),
('Digital BH','BH Digital','55443322110','CPF','31933334455','Belo Horizonte - MG'),
('Vianet','Net Vendas','66778899000','CPF','61977778888','Fortaleza - CE'),
('MegaNow','MegaNow Store','44332211002211','CNPJ','61333339999','Porto Alegre - RS'),
('Style Brasil','Brasil Style','11223344556677','CNPJ','85911112222','Campinas - SP'),
('Dimensão','Dimensão','77889966554433','CPF','85933334444','Florianópolis - SC'),
('MS Fashion','MS','44556677889900','CNPJ','11999990000','Brasília - DF'),
('VendasNorte','Norte Vendas','99887766554','CPF','71988889999','Natal - RN'),
('SulTech','Tech Sul','88993322117788','CNPJ','51912223344','Porto Alegre - RS');


-- PRODUCTSELLER
INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
(1,1,50),
(1,2,70),
(1,10,40),
(2,1,25),
(2,2,50),
(3,4,40),
(3,6,15),
(4,3,30),
(4,7,60),
(5,1,20),
(5,8,35),
(6,5,50),
(7,9,10);

-- PRODUCTSTORAGE
INSERT INTO productStorage (StorageLocation, quantity) VALUES
('CD São Paulo',100),
('CD Rio de Janeiro',80),
('CD Belo Horizonte',60),
('CD Porto Alegre',120),
('CD Curitiba',40),
('CD Brasília',75),
('CD Salvador',55),
('CD Fortaleza',65),
('CD Florianópolis',45),
('CD Belém',30),
('CD Recife',70),
('CD Manaus',25),
('CD Vitória',20),
('CD Goiânia',50),
('CD Campinas',85),
('CD Santos',95),
('CD Sorocaba',15),
('CD Uberlândia',35),
('CD Natal',28),
('CD João Pessoa',33);

-- STORAGELOCATION
INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1,1,'RJ'),(2,2,'SP'),(3,3,'BH'),(4,4,'Curitiba'),(5,5,'POA'),
(6,6,'Brasília'),(7,7,'Salvador'),(8,8,'Recife'),(9,9,'Fortaleza'),(10,10,'Manaus'),
(1,2,'RJ - Barra'),(2,3,'SP - Pinheiros'),(3,4,'BH - Savassi'),(4,5,'Curitiba - Centro'),
(5,6,'POA - Moinhos'),(6,7,'Brasília - Asa Norte'),(7,8,'Salvador - Barra'),(8,9,'Recife - Boa Viagem'),
(9,10,'Fortaleza - Meireles'),(10,1,'Manaus - Centro');

-- SENDPROD
INSERT INTO sendProd (clientName, Address, carrier, sendDate, deliveryDate) VALUES
('João Silva','Rua das Flores, 123 - SP','Jadlog','2025-06-03 17:00:00','2025-06-05'),
('Maria Souza','Av. Paulista, 2000 - SP','Correios','2025-06-06 12:00:00','2025-06-07'),
('Carlos Oliveira','Rua XV de Novembro, 55 - RJ','Braspress','2025-06-14 14:33:00','2025-06-15'),
('Pedro Ferreira','Alameda Santos, 1511 - SP','Total Express','2025-06-13 10:55:12','2025-06-15'),
('Fernanda Mendes','Av. Central, 700 - BH','Loggi','2025-06-13 15:30:00','2025-06-16'),
('Juliana Martins','Rua Pernambuco, 1213 - BH','Correios','2025-06-18 16:13:00','2025-06-20'),
('Luciana Barbosa','Rua Chile, 22 - POA','Sequoia','2025-06-19 12:14:00','2025-06-21'),
('Marcos Lopes','Av. Ipiranga, 556 - POA','Jamef','2025-06-21 17:00:00','2025-06-22'),
('André Dias','Rua Bela Vista, 11 - SP','Jadlog','2025-06-22 09:22:00','2025-06-25'),
('Roberto Pereira','Rua Bahia, 101 - SSA','Mercado Envios','2025-06-25 13:30:00','2025-06-28'),
('Patrícia Araújo','Av. Garibaldi, 421 - SSA','Loggi','2025-06-27 11:10:00','2025-06-29'),
('Marcela Ramos','Rua General, 44 - CWB','Correios','2025-06-30 14:00:00','2025-07-02'),
('Diego Santos','Rua Marechal, 77 - CWB','Jamef','2025-07-01 08:30:00','2025-07-03'),
('Isabela Nunes','SQS 211, Bloco C - BSB','Correios','2025-07-04 18:00:00','2025-07-05'),
('Eduardo Pinto','CLS 204, Bloco B - BSB','Loggi','2025-07-07 15:00:00','2025-07-09'),
('Larissa Moraes','Av. Beira Mar, 888 - FOR','Total Express','2025-07-08 17:20:00','2025-07-11'),
('Vinícius Reis','Rua Dragão do Mar, 13 - FOR','Sequoia','2025-07-11 10:00:00','2025-07-13'),
('Ana Costa','Rua Rio Branco, 900 - RJ','Jadlog','2025-07-13 18:00:00','2025-07-14'),
('Carla Ferraz','Rua Anita, 321 - FLN','Braspress','2025-07-14 20:00:00','2025-07-16'),
('Larissa Moraes','Av. Beira Mar, 888 - FOR','Mercado Envios','2025-07-15 11:00:00','2025-07-18');

-- SENDORDER
INSERT INTO sendOrder (idSOSend, idSOOrder, idSOClient) VALUES
(1,1,1),(2,2,2),(3,3,3),(4,4,5),(5,5,6),(6,6,8),(7,7,9),(8,8,10),(9,9,11),(10,10,13),(11,11,14),(12,12,15),(13,13,16),(14,14,17),(15,15,18),(16,16,19),(17,17,20),(18,18,4),(19,19,12),(20,20,19);

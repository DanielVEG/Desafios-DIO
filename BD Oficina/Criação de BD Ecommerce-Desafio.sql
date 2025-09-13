-- criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce_desafio;
create database ecommerce_desafio;
use ecommerce_desafio;

-- criar tabela cliente

create table client (
			idClient int auto_increment primary key,
            Fname varchar(45) not null,
            Minit char(3),
            Lname varchar(20) not null,
            Document char(14) not null,
            Document_type ENUM('CPF', 'CNPJ') not null,
            contact varchar(11) default 0,
            Address VARCHAR(255) not null,
            Birthday date,
            constraint unique_document_client unique (Document)
       
);

alter table client auto_increment=1;

desc client;

-- criar tabela produto
-- size = dimensão do produto
create table product (
			idProduct int auto_increment primary key,
            Pname VARCHAR(45),
            descriptionProd VARCHAR(255),
            classification_kids ENUM('0','3','5','6','8','10','12','14','16','18') NOT NULL DEFAULT '0',
            category ENUM('Eletrônico', 'Vestuário','Brinquedos', 'Alimentos','Móveis') not null,            
            size varchar(45),
            pvalue DECIMAL(10,2) default 0                  
);

alter table product auto_increment=1;

desc product;

-- criar tabela pagamento
create table payments (
			idPayment int auto_increment,
            idPaymentClient int,
            methodPayment ENUM('Boleto', 'Cartão de débito','Cartão de crédito', 'Dois cartões') not null,
            statuspayment ENUM('Pendente', 'Pago','Cancelado', 'Estornado','Em processamento') not null,
            totalAmount DECIMAL(10,2),
            dateCreate datetime,
            dateConfirmed datetime,
            primary key (idPayment, idPaymentClient),
            constraint fk_orders_payment foreign key (idPaymentClient) references client (idClient)

);

alter table payments auto_increment=1;

desc payments;

-- criar tabela detalhe do pagamento
create table paymentdetails (
			idPaymentDetail int auto_increment primary key,
            idPaymentPD int,
            idPDClient int,
            typePayment ENUM('boleto', 'débito','crédito') not null,
            Amount DECIMAL(10,2),
            barcode VARCHAR(48),
            lineDigitable VARCHAR(150),
            dateDue date,
            datePaid datetime null,
            cardBrand ENUM('Visa', 'Master','Elo'),
            maskedNumber char(16),
            cardholderName varchar(45),
            expirationMonth TINYINT,
            expirationYear SMALLINT,
            authorizationCode VARCHAR(50),
            installments TINYINT,
            constraint fk_orders_paymentDetails foreign key (idPaymentPD) references payments (idPayment),
            constraint fk_orders_client foreign key (idPDClient) references client (idClient)

);

desc paymentdetails;

alter table paymentdetails auto_increment=1;

-- criar tabela pedido
create table orders (
			idOrder int auto_increment primary key,
            idOrderClient int,
            idOrderPayment int,
            OrderStatus  ENUM('Em andamento', 'Em processamento', 'Enviado', 'Entregue', 'Confirmado','Cancelado','Estornado') default 'Em processamento',
            orderDescription varchar (255),
            sendValue float default 0,
            PaymentCash bool default false,
            orderDate DATETIME,		
            constraint fk_orders_client_order foreign key (idOrderClient) references client (idClient),
			constraint fk_orders_payment_order foreign key (idOrderPayment) references payments (idPayment)
);

alter table orders auto_increment=1;

desc orders;

-- criar tabela estoque
create table productStorage (
			idProdStorage int auto_increment primary key,
            StorageLocation varchar (255),
            quantity int default 0
);

alter table productStorage auto_increment=1;

desc productStorage;

-- criar tabela fornecedor
create table supplier(
			idSupplier int auto_increment primary key,
            SocialName varchar (255) not null,
            CNPJ char (14) not null,
            contact varchar(11) default 0,
            address varchar(45),
            constraint unique_supplier unique (CNPJ)
);

alter table supplier auto_increment=1;

desc supplier;

-- criar tabela Disponibilização um Produto

create table productSupplier(
idPsSupplier int,
idPsProduct int,
quantity int not null,
primary key (idPsSupplier, idPsProduct),
constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);

desc productSupplier;

-- criar tabela vendedor
create table seller(
			idSeller int auto_increment primary key,
            SocialName varchar (255),
            Absname varchar(255),
            Document char(14) not null,
            Document_type ENUM('CPF', 'CNPJ') not null,
            contact varchar(11) default 0,
            location varchar(255),
            constraint unique_socialname_supplier unique (SocialName),
            constraint unique_supplier unique (Document)
);

alter table seller auto_increment=1;

desc seller;

-- criar produto por vendedor (Terceiro)
create table productSeller(
			idPseller int,
            idPproduct int,
            prodQuantity int default 1,
            primary key (idPseller, idPproduct),
            constraint fk_productSeller_seller foreign key (idPseller) references seller(idSeller),
			constraint fk_productSeller_product foreign key (idPproduct) references product(idProduct)
);

desc productSeller;

-- criar Relação de Produto/Pedido

create table productOrder(
idPOproduct int,
idPOorder int,
poQuantity int default 1,
poStatus enum('Disponivel', 'Sem estoque') default 'Disponivel',
primary key (idPOproduct, idPOorder),
constraint fk_product_seller foreign key (idPOproduct) references product(idProduct),
constraint fk_product_product foreign key (idPOorder) references orders(idOrder)
);

desc productOrder;

-- criar Produto_em_Estoque

create table storageLocation(
idLproduct int,
idLstorage int,
location varchar(255) not null,
primary key (idLproduct, idLstorage),
constraint fk_productLocation_seller foreign key (idLproduct) references product(idProduct),
constraint fk_productLocation_product foreign key (idLstorage) references productStorage (idProdStorage)

);

desc storageLocation;

-- criar tabela entregas
create table sendProd (
			idSend int auto_increment primary key,
            clientName VARCHAR(45) not null,
            Address VARCHAR(45) not null,
            carrier VARCHAR(45) not null,
            sendDate datetime,
            deliveryDate date
);

alter table sendProd auto_increment=1;

desc sendProd;

-- criar Entrega_para_Pedido

create table sendOrder (
idSOSend int,
idSOOrder int,
idSOClient int,
primary key (idSOClient, idSOOrder, idSOSend),
constraint fk_sendOrder_Send foreign key (idSOSend) references sendProd(idSend),
constraint fk_sendOrder_Order foreign key (idSOOrder) references orders (idOrder),
constraint fk_sendOrder_Client foreign key (idSOClient) references client (idClient)
);

desc sendOrder;
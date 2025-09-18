# 🧑🏼‍💻 Sistema de Banco de Dados para E-commerce

Este projeto implementa um sistema completo de banco de dados para operação de um E-commerce, contendo:

- Diagrama EER geral do modelo
- Scripts de criação das tabelas
- Queries para relatórios e recuperação de dados essenciais

***

## 🗄️Estrutura do Banco de Dados

O modelo foi projetado para garantir **integridade referencial**, utilizando chaves primárias, estrangeiras, índices únicos e enumerações para validação de dados. Abrange as principais entidades e relacionamentos de um sistema de E-commerce:

- **Client:** Dados pessoais e contato dos clientes.
- **Product:** Cadastro detalhado dos produtos, incluindo categoria, classificação etária e valor.
- **Payments** e **PaymentDetails:** Registro dos pagamentos, métodos, status e detalhes (boleto, cartão, etc.).
- **Orders:** Controle dos pedidos realizados, incluindo status, descrição, valores e datas.
- **ProductStorage** e **StorageLocation:** Gerenciamento do estoque e localização dos produtos.
- **Supplier** e **ProductSupplier:** Fornecedores e produtos que disponibilizam para venda.
- **Seller** e **ProductSeller:** Terceiros vendedores e os produtos associados.
- **ProductOrder:** Produtos relacionados a cada pedido com quantidades e status.
- **SendProd** e **SendOrder:** Controle de entregas, transportadoras e datas.

Essa modelagem possibilita um acompanhamento completo do ciclo de vendas, estoque, pagamento e entrega.

***

## 📊 Diagrama EER

O diagrama apresenta as entidades principais e seus relacionamentos com cardinalidades expressas claramente, garantindo uma visão organizada e consistente do banco de dados para o negócio de E-commerce.

***

## 📄 Diagrama

No repositório, encontra-se o arquivo **Diagrama ERR - Ecommerce.pdf**, que exibe o esquema Entidade-Relacionamento-Relacionamento (ERR) do banco de dados criado para este desafio.
Este diagrama ilustra visualmente as tabelas, chaves e relacionamentos fundamentais para o funcionamento do sistema de comércio eletrônico.
Para uma visualização rápida online, segue abaixo um diagrama simplificado em Mermaid.js:



```mermaid
erDiagram
    CLIENT {
        int id PK
        string name
        string document
        string contact
        string address
        date birthDate
    }
    PRODUCT {
        int id PK
        string name
        string description
        enum ageRating
        enum category
        string size
        decimal price
    }
    SUPPLIER {
        int id PK
        string businessName
        string cnpj
        string contact
        string address
    }
    SELLER {
        int id PK
        string name
        string document
        string contact
        string address
    }
    ORDERS {
        int id PK
        int clientId FK
        enum status
        string description
        decimal freightValue
        enum paymentMethod
        datetime orderDate
    }
    PAYMENTS {
        int id PK
        int clientId FK
        enum method
        enum status
        decimal totalValue
        datetime dateCreated
        datetime dateConfirmed
    }
    PAYMENTDETAILS {
        int id PK
        int paymentId FK
        enum type
        decimal value
        string barcode
        string cardInfo
        int installments
    }
    PRODUCTSTORAGE {
        int id PK
        int productId FK
        string location
        int quantity
    }
    PRODUCTSUPPLIER {
        int productId PK, FK
        int supplierId PK, FK
        int quantity
    }
    PRODUCTSELLER {
        int productId PK, FK
        int sellerId PK, FK
        int quantity
    }
    PRODUCTORDER {
        int productId PK, FK
        int orderId PK, FK
        int quantity
        enum availabilityStatus
    }
    STORAGELOCATION {
        int id PK
        int productId FK
        string storageLocation
    }
    SENDPROD {
        int id PK
        int clientId FK
        string address
        string carrier
        datetime sendDate
        datetime deliveryDate
    }
    SENDORDER {
        int sendProdId PK, FK
        int orderId PK, FK
        int clientId PK, FK
    }

    CLIENT ||--o{ ORDERS : places
    CLIENT ||--o{ PAYMENTS : makes
    ORDERS ||--|{ PRODUCTORDER : contains
    PRODUCT ||--o{ PRODUCTORDER : included_in
    PRODUCT ||--o{ PRODUCTSUPPLIER : sourced_from
    SUPPLIER ||--o{ PRODUCTSUPPLIER : provides
    PRODUCT ||--o{ PRODUCTSELLER : sold_by
    SELLER ||--o{ PRODUCTSELLER : sells
    PRODUCT ||--o{ PRODUCTSTORAGE : stored_in
    ORDERS ||--o| PAYMENTS : paid_by
    SENDPROD ||--o{ SENDORDER : logistics_of
    ORDERS ||--o{ SENDORDER : delivered_by
    CLIENT ||--o{ SENDORDER : receives


***

## 📋 Scripts de Criação do Banco de Dados

Contém os scripts SQL para criação de todas as tabelas, constraints, chaves e índices necessários para o funcionamento do sistema.

- Tabelas criadas com nomes descritivos e tipagem apropriada.
- Uso de `AUTO_INCREMENT` para identificação única.
- Enumerações para garantir padronização de dados em status e classificações.

***

## Consultas SQL para Relatórios

Abaixo, algumas queries essenciais para análise e acompanhamento do negócio:


***

### Relatório de Vendas por Mês

```sql
SELECT 
    YEAR(orderDate) AS Ano,
    MONTH(orderDate) AS `Mês`,
    COUNT(*) AS `Quantidade de Vendas`,
    SUM(totalAmount) AS `Valor Total de Vendas`
FROM orders
JOIN payments ON orders.idOrderPayment = payments.idPayment
GROUP BY Ano, `Mês`
ORDER BY Ano DESC, `Mês` DESC;
```


***

### Relatório de Clientes

```sql
SELECT 
    concat(Fname,' ', Minit,' ',Lname) as 'Nome',
    Document_type as 'Tipo de documento',
    Document as 'Documento',
    contact as 'Contato telefônico',
    Address as 'Endereço',
    Birthday as 'Data de nascimento',
    COUNT(orders.idOrder) AS 'Total de Pedidos',
    SUM(payments.totalAmount) AS 'Valor Total Comprado'
FROM client
LEFT JOIN orders ON orders.idOrderClient = client.idClient
LEFT JOIN payments ON payments.idPaymentClient = client.idClient
GROUP BY client.idClient;
```


***

### Relatório de Entregas

```sql
SELECT
    so.idSOOrder as 'Número do Pedido',
    sp.clientName as 'Nome do cliente',
    sp.Address as 'Endereço',
    sp.carrier as 'Transportadora',
    sp.sendDate as 'Data de envio',
    sp.deliveryDate as 'Data de entrega',
    orders.OrderStatus as 'Status da entrega'
FROM sendProd sp
JOIN sendOrder so ON sp.idSend = so.idSOSend
JOIN orders ON so.idSOOrder = orders.idOrder
ORDER BY sp.sendDate DESC;
```


***

### Produtos Mais Vendidos

```sql
SELECT 
    p.idProduct as 'Número do Pedido',
    p.Pname AS Produto,
    SUM(po.poQuantity) AS 'Quantidade Vendida'
FROM productOrder po
JOIN product p ON po.idPOproduct = p.idProduct
GROUP BY p.idProduct, p.Pname
ORDER BY 'Quantidade Vendida' DESC
LIMIT 10;
```


***

## 📝 Considerações Finais

- O sistema contempla todas as fases do comércio eletrônico, desde cadastro do cliente até entrega final.
- As consultas são úteis para monitoramento gerencial e tomada de decisões estratégicas.
- A modelagem e scripts foram preparados para fácil manutenção e possível expansão futura.

***


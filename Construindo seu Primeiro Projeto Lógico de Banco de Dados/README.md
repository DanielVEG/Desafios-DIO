# 📦 Banco de Dados E-commerce

## 📖 Visão Geral

Este projeto consiste em um **banco de dados para um sistema de comércio eletrônico (E-commerce)**.
O esquema foi projetado para **gerenciar clientes, produtos, fornecedores, vendedores, pedidos, pagamentos, estoque e entregas** de forma integrada.

O objetivo é suportar operações típicas de uma loja online, permitindo **controle detalhado de compras, pagamentos e logística**.

***

## 🗄️ Estrutura do Banco de Dados

### Tabelas Principais

- **client**
Armazena informações dos clientes: nome, documentos (CPF/CNPJ), contato, endereço e data de nascimento.
    - Documento possui restrição de *unicidade* para evitar duplicação.
- **product**
Produtos disponíveis na loja, com: nome, descrição, classificação etária, categoria, tamanho/dimensão e valor.
- **payments**
Registra informações de pagamento: método, status, valor total, data de criação e confirmação.
- **paymentdetails**
Informações detalhadas do pagamento: tipo (boleto, cartão de débito/crédito), valores, código de barras, dados do cartão e parcelas.
- **orders**
Pedidos realizados pelos clientes, incluindo: status, descrição, valor do frete, forma de pagamento e data do pedido.
- **productStorage**
Gerencia o estoque: local de armazenamento e quantidade disponível.
- **supplier**
Fornecedores de produtos: razão social, CNPJ, contato e endereço.
    - O CNPJ possui restrição de *unicidade*.
- **productSupplier**
Relação entre produtos e fornecedores, com controle da quantidade disponibilizada.
- **seller**
Vendedores terceiros, incluindo dados de contato e documentos (CPF/CNPJ).
- **productSeller**
Relaciona vendedores terceiros aos produtos vendidos, com quantidade disponível.
- **productOrder**
Associação entre produtos e pedidos, com a quantidade e status de disponibilidade.
- **storageLocation**
Localização específica dos produtos no estoque.
- **sendProd**
Informações sobre entregas: cliente, endereço, transportadora, datas de envio e entrega.
- **sendOrder**
Associação entre entregas, pedidos e clientes para controle logístico.

***

## 🔑 Chaves e Relacionamentos

- **Chaves primárias** auto-incrementadas para identificação única.
- **Chaves estrangeiras** estabelecem ligações entre clientes, pedidos, pagamentos, produtos, fornecedores, vendedores, estoque e entregas.
- **Relacionamentos muitos-para-muitos** tratados por tabelas intermediárias (*productSupplier*, *productSeller*, *productOrder*).
- **Restrições de integridade** garantem consistência (ex: unicidade de documentos de clientes e CNPJs de fornecedores).

***

## 📋 Enumerações Importantes

- **Tipos de documentos**: CPF, CNPJ (para clientes e vendedores).
- **Classificação etária**: faixas recomendadas para produtos.
- **Categorias de produtos**: Eletrônico, Vestuário, Brinquedos, Alimentos, Móveis.
- **Status de pedidos e pagamentos**: para acompanhamento do fluxo de operações.
- **Métodos e tipos de pagamento**: incluindo bandeiras de cartão e número de parcelas.

***

## ⚙️ Considerações Técnicas

- Banco de dados: **MySQL**
- Uso de **ENUM** para campos com valores restritos.
- Algumas tabelas usam **chaves compostas** para garantir unicidade.
- Campos de **datas e horários** para controle temporal (ex: `orderDate`, `dateCreate`, `dateConfirmed`).
- Suporte a **múltiplos métodos de pagamento por pedido** com detalhamento individual.

***

## 🚀 Como Usar este Banco de Dados

1. Criar o banco:

```sql
CREATE DATABASE ecommerce_desafio;
```

2. Selecionar o banco:

```sql
USE ecommerce_desafio;
```

3. Executar o **script SQL** para criar as tabelas e relacionamentos.
4. Popular as tabelas com **dados reais** durante o desenvolvimento do sistema.
5. Utilizar **consultas e transações** para manipular pedidos, pagamentos, estoques e entregas de forma integrada.

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
    SERVPROD ||--o{ SENDORDER : logistics_of
    ORDERS ||--o{ SENDORDER : delivered_by
    CLIENT ||--o{ SENDORDER : receives

README - Banco de Dados E-commerce
Visão Geral
Este projeto consiste em um banco de dados para um sistema de comércio eletrônico (E-commerce). O banco de dados é projetado para gerenciar clientes, produtos, fornecedores, vendedores, pedidos, pagamentos, estoque e entregas de forma integrada.

O esquema foi criado para suportar operações típicas de uma loja online, permitindo controle detalhado dos produtos, compras, pagamentos e logística.

Estrutura do Banco de Dados
Tabelas Principais
client: Armazena informações dos clientes, incluindo nome, documentos (CPF/CNPJ), contato, endereço e data de nascimento. Documento possui restrição de unicidade para evitar duplicação.

product: Contém os produtos disponíveis na loja, com detalhes como nome, descrição, classificação etária, categoria, tamanho/dimensão e valor.

payments: Registra os pagamentos realizados pelos clientes, com método, status, valor total, data de criação e confirmação.

paymentdetails: Detalhes dos pagamentos, como tipo (boleto, cartão de débito/crédito), valores, código de barras, informações de cartão e parcelas.

orders: Controla os pedidos realizados por clientes, status do pedido, descrição, valor do frete, forma de pagamento e data do pedido.

productStorage: Gestão dos estoques dos produtos, contendo local e quantidade disponível.

supplier: Informações sobre fornecedores dos produtos, incluindo razão social, CNPJ, contato e endereço, com restrição de CNPJ única.

productSupplier: Associação entre produtos e fornecedores com controle de quantidade disponibilizada.

seller: Terceiros que vendem produtos, com dados similares aos fornecedores, incluindo documentos e contato.

productSeller: Relação entre vendedores terceiros e produtos vendidos, controlando quantidade.

productOrder: Associação entre produtos e pedidos, com quantidade e status de disponibilidade.

storageLocation: Localização específica de produtos em estoque, ligando produtos e locais de armazenamento.

sendProd: Informações sobre entregas, incluindo cliente, endereço, transportadora e datas de envio e entrega.

sendOrder: Associação entre entregas, pedidos e clientes para controle da logística.

Chaves e Relacionamentos
Uso extensivo de chaves primárias auto-incrementadas para identificação única.

Chaves estrangeiras estabelecem ligações entre clientes, pedidos, pagamentos, produtos, fornecedores, vendedores, estoque e entregas.

Relacionamentos muitos-para-muitos são tratados por tabelas intermediárias, como productSupplier, productSeller e productOrder.

Constrangimentos garantem integridade referencial, como a unicidade de documentos de clientes e CNPJs de fornecedores.

Enumerações Importantes
Tipos de documentos (CPF, CNPJ) para clientes e vendedores.

Classificação etária dos produtos para controle de faixa etária recomendada.

Categorias dos produtos (Eletrônico, Vestuário, Brinquedos, Alimentos, Móveis).

Status de pedidos e pagamentos para acompanhamento do fluxo das operações.

Métodos e tipos de pagamento detalhados com bandeiras de cartão e parcelas.

Considerações Técnicas
O banco utiliza o banco de dados MySQL com tipos ENUM para campos restritos a valores definidos.

Algumas tabelas possuem chaves primárias compostas para garantir unicidade de registros conforme relacionamento.

Campos de datas e horários são usados para controle temporal das operações (ex: orderDate, dateCreate, dateConfirmed).

O esquema suporta múltiplos métodos de pagamento por pedido e detalhamento de cada método.

Como usar este banco de dados
Criar o banco com o comando CREATE DATABASE ecommerce_desafio;.

Usar o banco com USE ecommerce_desafio;.

Executar o script SQL para criar as tabelas e relacionamentos conforme o esquema.

Popular as tabelas com dados reais conforme o sistema em desenvolvimento.

Utilizar consultas e transações para manipular pedidos, pagamentos, estoques e entregas de forma integrada.
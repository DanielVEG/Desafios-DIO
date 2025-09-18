USE ECOMMERCE_DESAFIO;

-- Relatório de Vendas por Mês
SELECT 
    YEAR(orderDate) AS Ano,
    MONTH(orderDate) AS `Mês`,
    COUNT(*) AS `Quantidade de Vendas`,
    SUM(totalAmount) AS `Valor Total de Vendas`
FROM orders
JOIN payments ON orders.idOrderPayment = payments.idPayment
GROUP BY Ano, `Mês`
ORDER BY Ano DESC, `Mês` DESC;


-- Relatório de Clientes

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


-- Relatório de Entregas

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


-- Produtos mais vendidos

SELECT 
    p.idProduct as 'Número do Pedido',
    p.Pname AS Produto,
    SUM(po.poQuantity) AS 'Quantidade Vendida'
FROM productOrder po
JOIN product p ON po.idPOproduct = p.idProduct
GROUP BY p.idProduct, p.Pname
ORDER BY 'Quantidade Vendida' DESC
LIMIT 10;


USE ECOMMERCE_DESAFIO;

-- Relatório de Vendas por Mês
SELECT 
    YEAR(orderDate) AS Ano,
    MONTH(orderDate) AS Mes,
    COUNT(*) AS QtdVendas,
    SUM(totalAmount) AS VlrTotalVendas
FROM orders
JOIN payments ON orders.idOrderPayment = payments.idPayment
GROUP BY YEAR(orderDate), MONTH(orderDate)
ORDER BY Ano DESC, Mes DESC;


-- Relatório de Clientes

SELECT 
    idClient,
    Fname,
    Lname,
    Document,
    Document_type,
    contact,
    Address,
    Birthday,
    COUNT(orders.idOrder) AS TotalPedidos,
    SUM(payments.totalAmount) AS ValorTotalComprado
FROM client
LEFT JOIN orders ON orders.idOrderClient = client.idClient
LEFT JOIN payments ON payments.idPaymentClient = client.idClient
GROUP BY client.idClient;


-- Relatório de Entregas

SELECT
    sp.idSend,
    so.idSOOrder AS idPedido,
    sp.clientName,
    sp.Address,
    sp.carrier,
    sp.sendDate,
    sp.deliveryDate,
    orders.OrderStatus
FROM sendProd sp
JOIN sendOrder so ON sp.idSend = so.idSOSend
JOIN orders ON so.idSOOrder = orders.idOrder
ORDER BY sp.sendDate DESC;


-- Produtos mais vendidos

SELECT 
    p.idProduct,
    p.Pname AS Produto,
    SUM(po.poQuantity) AS QuantidadeVendida
FROM productOrder po
JOIN product p ON po.idPOproduct = p.idProduct
GROUP BY p.idProduct, p.Pname
ORDER BY QuantidadeVendida DESC
LIMIT 10;


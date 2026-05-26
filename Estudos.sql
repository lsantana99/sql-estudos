-- ETAPA 3 - CLIENTES
-- CUSTOMERS

USE brazilianecomeerce;

-- ESTADOS COM MAIS CLIENTES
SELECT 
	COUNT(customer_id) AS quantidade_clientes,
    customer_state AS estado
FROM customers
GROUP BY customer_state
ORDER BY COUNT(customer_id) DESC

-- CLIENTES COM MAIS PEDIDOS
-- CUSTOMERS -> ORDERS
SELECT
	c.customer_id AS id_cliente,
    COUNT(o.order_id) AS qtd_pedidos
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY COUNT(o.order_id) DESC;

-- CLIENTES QUE MAIS GASTARAM
-- CLIENTE E VALOR DE PAGAMENTO - CUSTOMERS -> ORDERS -> ORDER_PAYMENTS
SELECT
	c.customer_id AS id_cliente,
    ROUND(SUM(op.payment_value) ,2) AS total_pago
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_payments op
ON o.order_id = op.order_id
GROUP BY c.customer_id
ORDER BY ROUND(SUM(op.payment_value) ,2) DESC

-- MÉDIA DE PEDIDOS POR CLIENTES
SELECT 
	AVG(qtd_pedidos) AS medias_pedido_por_cliente
FROM(
	SELECT
		c.customer_id AS id_cliente,
		COUNT(o.order_id) AS qtd_pedidos
	FROM customers c
	INNER JOIN orders o
	ON c.customer_id = o.customer_id
	GROUP BY c.customer_id
 ) AS pedidos_cliente
 
 -- CLIENTES RECORRENTES (2 OU MAIS PEDIDOS)
SELECT
	customer_id AS id_cliente,
	COUNT(order_id) AS contagem_pedido
FROM orders
GR

-- TEMPO MÉDIO ENTRE COMPRASOUP BY customer_id
HAVING COUNT(order_id) >= 2

-- PORCENTAGEM DE CLIENTES RECORRENTES
SELECT COUNT(*)
FROM customers

select sum(payment_value) from order_payments
SELECT COUNT(*) FROM ORDERS






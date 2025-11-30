--  Veículos por faixa de preço--
SELECT modelo, marca, ano_fabricacao, preco 
FROM veiculo 
WHERE preco BETWEEN 40000 AND 60000 
ORDER BY preco;

-- Agendamentos de hoje --
SELECT a.data_agendamento, a.hora_agendamento, c.nome as cliente, s.tipo_servico 
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico
WHERE a.data_agendamento = date('2024-01-25')
ORDER BY a.hora_agendamento;

--  Vendas por forma de pagamento --
SELECT forma_pagamento, COUNT(*) as total, SUM(valor_total) as valor_total
FROM Venda 
GROUP BY forma_pagamento 
ORDER BY valor_total DESC;

-- Serviços mais populares --
SELECT s.tipo_servico, COUNT(a.id_agendamento) as total_agendamentos
FROM servico s
JOIN agendamento a ON s.id_servico = a.id_servico
GROUP BY s.tipo_servico
ORDER BY total_agendamentos DESC
LIMIT 5;

-- Clientes que mais gastaram --
SELECT c.nome, SUM(v.valor_total) as total_gasto, COUNT(v.id_venda) as total_compras
FROM cliente c
JOIN Venda v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nome
ORDER BY total_gasto DESC
LIMIT 5;
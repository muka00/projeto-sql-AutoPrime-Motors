    -- COMANDOS DELETE --

--  Remover agendamentos cancelados com mais de 30 dias --
DELETE FROM agendamento 
WHERE status_agendamento = 'Cancelado' 
AND date(data_agendamento) < date('now', '-30 days'); -- substituir (now) pela data --

-- Remover clientes inativos sem vendas ou agendamentos --
DELETE FROM cliente 
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente FROM Venda
    UNION 
    SELECT DISTINCT id_cliente FROM agendamento
)
AND data_cadastro < date('now', '-90 days'); -- substituir (now) pela data --

-- Remover veículos com status "Indisponível" há mais de 6 meses --
DELETE FROM veiculo 
WHERE status = 'Indisponível' 
AND id_veiculo NOT IN (
    SELECT DISTINCT id_veiculo FROM Venda
    UNION
    SELECT DISTINCT id_veiculo FROM agendamento
);

-- Remover serviços que nunca foram agendados --
DELETE FROM servico 
WHERE id_servico NOT IN (
    SELECT DISTINCT id_servico FROM agendamento
);

-- Remover financiamentos com status "Rejeitado" --
DELETE FROM financiamento 
WHERE status_aprovacao = 'Rejeitado' 
AND id_financiamento NOT IN (
    SELECT DISTINCT id_financiamento FROM Venda
);

    -- SELECT PARA VERIFICAR AS ALTERAÇÕES --

-- Verificar veículos atualizados --
SELECT id_veiculo, modelo, marca, status, preco 
FROM veiculo 
WHERE id_veiculo IN (1, 2, 3);

-- Verificar agendamentos atualizados --
SELECT id_agendamento, data_agendamento, status_agendamento, observacoes
FROM agendamento 
WHERE status_agendamento = 'Concluído'
LIMIT 5;

-- Verificar funcionários atualizados --
SELECT id_funcionario, nome, cargo, telefone
FROM funcionario 
WHERE id_funcionario = 1;

-- Contar registros antes e depois (exemplo para agendamentos) --
SELECT 
    (SELECT COUNT(*) FROM agendamento WHERE status_agendamento = 'Cancelado') as agendamentos_cancelados,
    (SELECT COUNT(*) FROM cliente) as total_clientes,
    (SELECT COUNT(*) FROM veiculo WHERE status = 'Indisponível') as veiculos_indisponiveis;
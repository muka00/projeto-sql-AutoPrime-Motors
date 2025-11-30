-- UPDATES --

-- Atualizar o status de um veículo para "Vendido" após uma venda --
UPDATE veiculo 
SET status = 'Vendido', 
    preco = preco * 0.95  -- Aplica um desconto simbólico de 5% --
WHERE id_veiculo = 1;

-- Atualizar o status de agendamentos antigos para "Concluído" --
UPDATE agendamento 
SET status_agendamento = 'Concluído',
    observacoes = observacoes || ' - Serviço concluído em ' || date('now') -- substituir (now) pela data --
WHERE data_agendamento < date('now') -- substituir (now) pela data --
AND status_agendamento = 'Agendado';

-- Aumentar o preço dos veículos de uma marca específica em 10% --
UPDATE veiculo 
SET preco = preco * 1.10  -- Aumento de 10% --
WHERE marca = 'Volkswagen' 
AND status = 'Disponível';

-- Atualizar o cargo e telefone de um funcionário promovido --
UPDATE funcionario 
SET cargo = 'Gerente de Vendas',
    telefone = '(11)9999-8888'
WHERE id_funcionario = 1 
AND nome = 'Carlos Souza';

-- Corrigir o status de financiamentos baseado no valor --
UPDATE financiamento 
SET status_aprovacao = CASE 
    WHEN valor_financiamento > 80000 THEN 'Analise Especial'
    WHEN valor_financiamento <= 50000 THEN 'Aprovado Automatico'
    ELSE status_aprovacao
END
WHERE status_aprovacao = 'Pendente';
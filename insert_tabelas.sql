-- Inserindo FORNECEDORES --
INSERT INTO fornecedor (CNPJ, nome_empresa, telefone, email, tipo_fornecedor) VALUES
('12.345.678/0001-90', 'Concessionária ABC Ltda', '(11)3333-4444', 'vendas@abcveiculos.com', 'Concessionária'),
('98.765.432/0001-10', 'Auto Peças XYZ S/A', '(11)5555-6666', 'compras@autopecasxyz.com', 'Peças e Acessórios'),
('23.456.789/0001-30', 'MotoCar Import', '(11)7777-8888', 'contato@motocar.com', 'Importadora'),
('34.567.890/0001-40', 'JKL Veículos', '(11)9999-0000', 'vendas@jklveiculos.com', 'Concessionária'),
('45.678.901/0001-50', 'Master Auto Parts', '(11)1111-2222', 'contato@masterautoparts.com', 'Peças e Acessórios');

select * From fornecedor; -- verificar se foi inserido --

-- Inserindo CLIENTES --
INSERT INTO cliente (nome, telefone, CPF, email, endereco, data_cadastro) VALUES
('João Silva', '(11)9999-8888', '123.456.789-00', 'joao.silva@email.com', 'Rua das Flores, 123 - São Paulo, SP', '2024-01-10'),
('Maria Santos', '(11)7777-6666', '987.654.321-00', 'maria.santos@email.com', 'Av. Paulista, 1000 - São Paulo, SP', '2024-01-12'),
('Pedro Oliveira', '(11)8888-9999', '456.789.123-00', 'pedro.oliveira@email.com', 'Rua Augusta, 500 - São Paulo, SP', '2024-01-15'),
('Ana Costa', '(11)6666-5555', '789.123.456-00', 'ana.costa@email.com', 'Alameda Santos, 200 - São Paulo, SP', '2024-01-18'),
('Carlos Ferreira', '(11)4444-3333', '321.654.987-00', 'carlos.ferreira@email.com', 'Rua Oscar Freire, 800 - São Paulo, SP', '2024-01-20');

select * From cliente; -- verificar se foi inserido --

-- Inserindo FUNCIONÁRIOS --
INSERT INTO funcionario (nome, CPF, cargo, telefone, email, data_admissao) VALUES
('Carlos Souza', '111.222.333-44', 'Vendedor', '(11)2222-3333', 'carlos.souza@concessionaria.com', '2023-05-10'),
('Fernanda Lima', '555.666.777-88', 'Gerente', '(11)4444-5555', 'fernanda.lima@concessionaria.com', '2022-03-15'),
('Ricardo Martins', '999.888.777-66', 'Consultor', '(11)3333-2222', 'ricardo.martins@concessionaria.com', '2023-08-20'),
('Juliana Rocha', '444.333.222-11', 'Assistente', '(11)1111-2222', 'juliana.rocha@concessionaria.com', '2024-01-05'),
('Roberto Alves', '777.888.999-00', 'Vendedor', '(11)6666-7777', 'roberto.alves@concessionaria.com', '2023-11-12');

select * From funcionario; -- verificar se foi inserido --

-- Inserindo VEÍCULOS --
INSERT INTO veiculo (chassi, placa, modelo, marca, ano_fabricacao, cor, kilometragem, preco, status, id_fornecedor) VALUES
('9BWZZZ377VT004251', 'ABC1D23', 'Gol', 'Volkswagen', 2022, 'Prata', 15000, 45000.00, 'Disponível', 1),
('9BGZZZ377VT004252', 'XYZ9K87', 'Onix', 'Chevrolet', 2023, 'Preto', 8000, 52000.00, 'Disponível', 1),
('9BRZZZ377VT004253', 'DEF2G34', 'HB20', 'Hyundai', 2023, 'Branco', 12000, 48000.00, 'Disponível', 1),
('9BMZZZ377VT004254', 'GHI5H67', 'Corolla', 'Toyota', 2022, 'Cinza', 20000, 85000.00, 'Disponível', 4),
('9BNZZZ377VT004255', 'JKL8M90', 'Civic', 'Honda', 2023, 'Vermelho', 5000, 95000.00, 'Disponível', 4);

select * From veiculo; -- verificar se foi inserido --

-- Inserindo SERVIÇOS (5 registros)--
INSERT INTO servico (tipo_servico, descricao, valor_base, tempo_medio) VALUES
('Lavagem Completa', 'Lavagem interna e externa com cera', 80.00, '01:00'),
('Troca de Óleo', 'Troca de óleo e filtro', 120.00, '00:30'),
('Alinhamento', 'Alinhamento e balanceamento', 100.00, '00:45'),
('Revisão Básica', 'Revisão de 10.000 km', 250.00, '02:00'),
('Polimento', 'Polimento da pintura', 200.00, '01:30');

select * From servico; -- verificar se foi inserido --

-- Inserindo VENDAS --
INSERT INTO Venda (data_venda, valor_total, forma_pagamento, id_cliente, id_veiculo, id_funcionario) VALUES
('2024-01-15', 45000.00, 'Cartão de Crédito', 1, 1, 1),
('2024-01-16', 52000.00, 'Financiamento', 2, 2, 3),
('2024-01-18', 48000.00, 'À Vista', 3, 3, 1),
('2024-01-20', 85000.00, 'Financiamento', 4, 4, 5),
('2024-01-22', 95000.00, 'Cartão de Débito', 5, 5, 3);

select * From venda; -- verificar se foi inserido --

-- Inserindo AGENDAMENTOS --
INSERT INTO agendamento (data_agendamento, hora_agendamento, status_agendamento, id_cliente, id_veiculo, id_servico, id_funcionario, observacoes) VALUES
('2024-01-25', '09:00:00', 'Agendado', 1, 1, 1, 4, 'Cliente solicitou lavagem completa'),
('2024-01-26', '14:30:00', 'Agendado', 2, 2, 2, 4, 'Troca de óleo sintético'),
('2024-01-27', '10:15:00', 'Agendado', 3, 3, 3, 4, 'Alinhamento após troca de pneus'),
('2024-01-28', '08:45:00', 'Agendado', 4, 4, 4, 4, 'Primeira revisão do veículo'),
('2024-01-29', '16:00:00', 'Agendado', 5, 5, 5, 4, 'Polimento para remover riscos');

select * From agendamento; -- verificar se foi inserido --

-- Inserndo FINANCIAMENTOS --
INSERT INTO financiamento (valor_financiamento, parcelas, taxa_juros, status_aprovacao, id_venda, id_cliente, id_veiculo) VALUES
(52000.00, 48, 1.2, 'Aprovado', 2, 2, 2),
(85000.00, 60, 1.5, 'Aprovado', 4, 4, 4),
(40000.00, 36, 1.0, 'Pendente', 1, 1, 1),
(75000.00, 48, 1.3, 'Aprovado', 3, 3, 3),
(90000.00, 72, 1.8, 'Analise', 5, 5, 5);

select * From financiamento; -- verificar se foi inserido --
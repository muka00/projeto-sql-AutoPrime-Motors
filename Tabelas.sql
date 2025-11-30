    --Criando TABELAS --

BEGIN TRANSACTION;
--TABELA CLIENTE
Create table cliente(
    id_cliente integer PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    telefone TEXT(15) NOT NULL,
    CPF TEXT(15) NOT NULL,
    email TEXT(100),
    endereco TEXT(250) NOT NULL,
    data_cadastro DATE NOT NULL
);

--TABELA VENDA--
CREATE TABLE Venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda DATE NOT NULL,
    valor_total FLOAT NOT NULL,
    forma_pagamento VARCHAR(25) NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_veiculo INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

--TABELA FUNCIONARIO--
create table funcionario (
    id_funcionario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT(100) NOT NULL,
    CPF TEXT(15) NOT NULL,
    cargo TEXT(100) NOT NULL,
    telefone TEXT(15) NOT NULL,
    email TEXT(100) NOT NULL,
    data_admissao DATE NOT NULL
);

--TABELA AGENDAMENTO--
CREATE TABLE agendamento (
    id_agendamento INTEGER PRIMARY KEY AUTOINCREMENT,
    data_agendamento TEXT NOT NULL,
    hora_agendamento TEXT NOT NULL,
    status_agendamento TEXT NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_veiculo INTEGER NOT NULL,
    id_servico INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    observacoes TEXT,
    data_criacao TEXT DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
FOREIGN KEY (id_servico) REFERENCES servico(id_servico),
FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
);

--TABELA VEICULO--
CREATE TABLE veiculo(
    id_veiculo INTEGER PRIMARY KEY AUTOINCREMENT,
    chassi TEXT(17) NOT NULL,
    placa TEXT(10) NOT NULL,
    modelo TEXT(15) NOT NULL,
    marca TEXT(15) NOT NULL,
    ano_fabricacao INTEGER NOT NULL,
    cor TEXT(15) NOT NULL,
    kilometragem INTERGER NOT NULL,
    preco REAL NOT NULL,
    status TEXT(20) NOT NULL,
    id_fornecedor INTERGER,
FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
    );
    
--TABELA FORNECEDOR--
CREATE TABLE fornecedor(
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    CNPJ TEXT(20) NOT NULL,
    nome_empresa TEXT(50) NOT NULL,
    telefone TEXT(15) NOT NULL,
    email TEXT(100) NOT NULL,
    tipo_fornecedor TEXT(100) NOT NULL
);

--TABELA SERVIÇO--
CREATE TABLE servico(
    id_servico INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo_servico TEXT NOT NULL,
    descricao TEXT NOT NULL,
    valor_base REAL NOT NULL,
    tempo_medio TEXT(30)
);

--TABELA FINANCIAMENTO--
CREATE TABLE financiamento(
    id_financiamento INTEGER PRIMARY KEY AUTOINCREMENT,
    valor_financiamento REAL NOT NULL,
    parcelas INTEGER NOT NULL,
    taxa_juros REAL NOT NULL,
    status_aprovacao TEXT NOT NULL,
    id_venda INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_veiculo INTEGER NOT NULL,
FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);
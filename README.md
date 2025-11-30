<hr> 
<div align="center"> 
  <h1>🚗 AutoPrime Motors - Sistema de Gestão</h1> 
  <p><strong>Sistema completo de gerenciamento para concessionária de veículos</strong></p> 
</div> 

<div align="center"> 
   <img src="http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=RED&style=for-the-badge" alt="Status: Em Desenvolvimento"/>
</div> 

## Tópicos
- [Descrição do projeto](#descrição-do-projeto)
- [Estrutura do Banco](#estrutura-do-banco)
- [Funcionalidades](#funcionalidades)
- [Tecnologias utilizadas](#tecnologias-utilizadas)
- [Acesso ao projeto](#acesso-ao-projeto)
- [Como usar o projeto](#como-usar-o-projeto)
- [Desenvolvedores](#desenvolvedores)
---

## Descrição do projeto

O **Sistema AutoPrime Motors** é um banco de dados completo desenvolvido em **SQLite**, projetado para gerenciar todos os processos de uma concessionária de veículos — desde o controle de estoque, vendas e agendamentos até financiamentos e serviços pós-venda.  
O sistema foi construído com foco em organização, escalabilidade e facilidade de manutenção, permitindo que a concessionária acompanhe o ciclo de vida completo de cada veículo de forma eficiente.

---

## Estrutura do Banco

### 🗃️ Tabelas Principais

| Tabela | Descrição |
|--------|-----------|
| cliente | Cadastro de clientes da concessionária |
| veiculo | Estoque de veículos (novos e usados) |
| funcionario | Funcionários e cargos |
| venda | Registro de vendas realizadas |
| agendamento | Agendamentos de serviços automotivos |
| servico | Catálogo de serviços disponíveis |
| financiamento | Propostas e contratos de financiamento |
| fornecedor | Fornecedores de veículos |

### 🔗 Relacionamentos (visão geral)
Cliente ←→ Venda ←→ Veículo ←→ Fornecedor
↑ ↑ ↑
Agendamento Financiamento Funcionário
↓
Serviço


---

## Funcionalidades

✅ **Gestão de Estoque de Veículos**  
Controle de status, histórico de preços, situação de venda e relação com fornecedores.

✅ **Sistema de Vendas**  
Registro completo de vendas, com formas de pagamento, comissão e métricas de faturamento.

✅ **Agendamento de Serviços**  
Gerenciamento de serviços automotivos com status, datas, horários e responsáveis.

✅ **Controle de Financiamentos**  
Taxas, parcelas, aprovação, vínculo com vendas e clientes.

✅ **Cadastro de Serviços**  
Tipos de serviços, valores base e histórico por veículo.

✅ **Relatórios e Consultas Avançadas**  
Consultas analíticas e gerenciais utilizando SQL.

---

## Tecnologias utilizadas

![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=sql&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

---
## Desenvolvedores

[![Samuel Fernandes](https://avatars.githubusercontent.com/u/212030742?v=4)](https://github.com/muka00)  
[**Samuel Fernandes**](https://github.com/muka00)

## Acesso ao projeto

Você pode **acessar o código fonte** aqui:  
👉 https://github.com/muka00/projeto-sql-AutoPrime-Motors

Ou **baixar o projeto em ZIP** aqui:  
👉 https://github.com/muka00/projeto-sql-AutoPrime-Motors/archive/refs/heads/main.zip

---

## Como usar o projeto

### 📋 Pré-requisitos
- SQLite Studio ou qualquer cliente SQLite  
- Git (opcional)

### 🚀 Execução dos scripts

Após baixar/clonar o projeto:

1. Abra o **SQLite Studio** ou o **terminal sqlite3**.
2. Execute os scripts **na ordem correta**:

```sql
-- 1. Criar as tabelas
 Tabelas.sql;

-- 2. Inserir os dados iniciais
 insert_tabelas.sql;

-- 3. Consultas de exemplo
 select_tabelas.sql;

-- 4. Manutenção (opcional)
 Updates_tabelas.sql;
 Delete_tabelas.sql;


# 💼 Projeto Oficina Mecânica — Modelagem e SQL

Este projeto foi desenvolvido como parte do desafio de modelagem de banco de dados da [DIO](https://www.dio.me/), com o objetivo de aplicar os conceitos de modelo entidade-relacionamento (ER), esquema lógico e implementação SQL em um cenário realista: o gerenciamento de uma oficina mecânica.

---

## 🧠 Contexto do Projeto

A oficina realiza serviços de manutenção em veículos de clientes. O sistema gerencia:

- Cadastro de clientes e seus veículos
- Funcionários da oficina
- Serviços oferecidos
- Ordens de serviço com múltiplos itens
- Pagamentos realizados

---

## 🗂️ Esquema Lógico

O modelo lógico foi criado com base no diagrama ER e implementado em MySQL. As principais tabelas são:

- `Cliente`
- `Veiculo`
- `Funcionário`
- `Serviço`
- `Ordem_De_Serviço`
- `Item_Serviço`
- `Pagamento`

### 🔗 Relacionamentos

| Nome da FK              | Tabela Origem         | Coluna Origem     | Referência              |
|------------------------|-----------------------|-------------------|--------------------------|
| `fk_veiculo_cliente`   | `Veiculo`             | `idCliente`       | `Cliente.idCliente`      |
| `fk_ordem_veiculo`     | `Ordem_De_Serviço`    | `idVeiculo`       | `Veiculo.idVeiculo`      |
| `fk_ordem_funcionario` | `Ordem_De_Serviço`    | `idFuncionario`   | `Funcionário.idFuncionario` |
| `fk_item_ordem`        | `Item_Serviço`        | `idOrdem`         | `Ordem_De_Serviço.idOrdem` |
| `fk_item_servico`      | `Item_Serviço`        | `idServico`       | `Serviço.idServico`      |
| `fk_pagamento_ordem`   | `Pagamento`           | `idOrdem`         | `Ordem_De_Serviço.idOrdem` |

---

## 🛠️ Script de Criação

O script SQL inclui:

- Criação das tabelas com `AUTO_INCREMENT` e `PRIMARY KEY`
- Definição de `FOREIGN KEY` com integridade referencial
- Inserção de dados de teste para todos os módulos

---

## 🔍 Consultas SQL Avançadas

O projeto inclui consultas com:

- `SELECT` simples
- Filtros com `WHERE`
- Atributos derivados com expressões
- Ordenação com `ORDER BY`
- Agrupamento com `GROUP BY` e `HAVING`
- Junções entre múltiplas tabelas (`JOIN`)

## 📦 Como Executar

1. Crie o banco `Projeto_Oficina_Mecanica` no MySQL.
2. Execute o script de criação das tabelas.
3. Insira os dados de teste fornecidos.
4. Rode as queries para validar o funcionamento e testar os relacionamentos.

---

## 🧑‍💻 Autor

Projeto desenvolvido por **Marcio**, como parte do desafio de modelagem de banco de dados da [DIO](https://www.dio.me/).

- 📧 Email: githubmarcio@gmail.com
- 🔗 LinkedIn: [linkedin.com/in/marcioantoniovaz](https://www.linkedin.com/in/marcioantoniovaz)




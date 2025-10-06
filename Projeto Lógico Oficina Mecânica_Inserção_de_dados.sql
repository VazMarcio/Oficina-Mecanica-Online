Use Projeto_Oficina_Mecanica;

-- Clientes
INSERT INTO Cliente (nome, telefone, email, cpf) VALUES
('Maria Oliveira', '11988888888', 'maria@email.com', '987.654.321-11'),
('Carlos Mendes', '11977777777', 'carlos@email.com', '456.789.123-22');


-- Veículos
INSERT INTO Veiculo (placa, modelo, marca, ano, idCliente) VALUES
('ABC1234', 'Civic', 'Honda', 2018, 1),
('XYZ5678', 'Corolla', 'Toyota', 2020, 2),
('DEF4321', 'Gol', 'Volkswagen', 2015, 3);

-- Funcionários
INSERT INTO Funcionário (nome, telefone, cargo, salario) VALUES
('Pedro Lima', '11966666666', 'Mecânico', 3200.00),
('Ana Costa', '11955555555', 'Recepcionista', 2500.00),
('Rafael Torres', '11944444444', 'Mecânico', 3400.00);

-- Serviços
INSERT INTO Serviço (descricao, preco) VALUES
('Troca de óleo', 100.00),
('Alinhamento e balanceamento', 150.00),
('Revisão completa', 500.00),
('Troca de pastilhas de freio', 200.00);

-- Ordens de Serviço
INSERT INTO Ordem_De_Serviço (idVeiculo, idFuncionario, situacao) VALUES
(1, 1, 'Em análise'),
(2, 3, 'Autorizado Concerto'),
(3, 1, 'Em análise');

-- Itens de Serviço
INSERT INTO Item_Serviço (idServico, idOrdem, quantidade, valor_unitario, valor_total) VALUES
(1, 1, 1, 100.00, 100.00),
(2, 1, 1, 150.00, 150.00),
(3, 2, 1, 500.00, 500.00),
(4, 3, 2, 200.00, 400.00);

-- Pagamentos
INSERT INTO Pagamento (idOrdem, forma_pagamento, valor_pago, data_pagamento) VALUES
(1, 'Pix', 250.00, 20251006),
(2, 'Cartão de crédito', 500.00, 20251005),
(3, 'Boleto', 400.00, 20251007);




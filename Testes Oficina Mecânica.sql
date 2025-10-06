Use Projeto_Oficina_Mecanica;

-- Recuperação simples com Select 
-- Quais são os clientes cadastrados na oficina?

select nome, telefone, email from Cliente;

-- Filtro com Where
-- quais veiculos da marca Honda estão cadastrados?

select modelo, marca, ano from Veiculo;

-- Expressão para gerar atibuto derivado
-- Qual o valor total de cada item de serviço, calculado a partir
-- da quantidade e valor unitário?

select idItem, quantidade, valor_unitario, (quantidade * valor_unitario) as 
valor_calculado from Item_Serviço;

-- Ordenação com Order By
-- Quais serviços estão cadastrados, ordenados do mais caro para o mais barato?

select descricao, preco from Serviço 
order by preco desc;

-- Filtro por grupo com Having
-- Quais ordens de serviço tem valor total superior a R$ 300?

select idordem, Sum(valor_total) As total_ordem from Item_Serviço
group by idordem having Sum(valor_total) > 300;

-- Junção entre tabelas Join
-- Quais clientes possuiem veiculos cadastrados?

select C.nome As cliente, V.modelo, V.placa from Cliente C 
join Veiculo V on C.idcliente = V.idcliente;

-- Junções com múltiplas tabelas
-- Quais serviços foram realizadas em cada ordem, com nome do cliente
-- e funcionario responsável

select OS.idordem, C.nome as Cliente, F.nome as Funcionario, S.descricao as Serviço
from Ordem_De_Serviço OS
join veiculo V on OS.idveiculo = V.idVeiculo
join cliente C on V.idCliente = C.idcliente
join Funcionário F on OS.idfuncionario = F.idFuncionario
join Item_Serviço ISV on OS.idordem = ISV.idordem
join Serviço S On ISV.idservico = S.idservico;

-- Pagamentos por forma
-- Quantos pagamentos foram feitos por cada forma de pagamento?

select forma_pagamento, count(*) as quantidade from Pagamento
group by forma_pagamento;

-- Ordens abertas recentemente
-- Quais ordens foram abertas nos últimos 7 dias?

select idordem, data_abertura, situacao from Ordem_De_Serviço 
where data_abertura >= date_sub(current_date, interval 7 day);
		
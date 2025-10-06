Create database if not exists Projeto_Oficina_Mecanica;
Use Projeto_Oficina_Mecanica;

-- Criação das tabelas

ALTER TABLE Cliente MODIFY email VARCHAR(50);

create table Cliente (
    idCliente INT primary key not null auto_increment,
    nome varchar(45),
    telefone varchar(15),
    email varchar(15),
    cpf varchar(14) not null unique
);
   create table Veiculo(
	idVeiculo int primary key not null auto_increment,
    placa varchar(10) not null,
    modelo varchar(20),
    marca varchar(20),
    ano int,
    idCliente Int Not null,
    constraint fk_veiculo_cliente foreign key (idCliente) references cliente(idCliente)
    );
    
    create table Funcionário(
		idFuncionario int primary key auto_increment,
        nome varchar(45),
        telefone varchar(20),
        cargo varchar(20),
        salario decimal(10,2) not null
	);
   
	create table Serviço(
		idServico int primary key not null auto_increment,
        descricao varchar(200),
        preco decimal(10,2) not null
	);
        
	create table Ordem_De_Serviço(
		idOrdem int primary key not null auto_increment,
        idVeiculo int not null,
        idFuncionario int not null,
        data_abertura datetime default current_timestamp,
        situacao  enum('Em análise', 'Autorizado Concerto') default 'Em análise',
        constraint fk_ordem_veiculo foreign key (idVeiculo) references veiculo(idVeiculo),
        constraint fk_ordem_funcionario foreign key (idFuncionario) 
        references funcionario(idFuncionario)
	);
    
   create table Item_Serviço(
		idItem int primary key not null auto_increment,
		idServico int not null,
		idOrdem int not null,
		quantidade int,
		valor_unitario decimal(10,2) not null,
		valor_total decimal (10,2) not null,
        constraint fk_item_servico foreign key (idServico) references Serviço(idServico),
        constraint fk_item_ordem foreign key (idOrdem) references Ordem_de_Serviço(idOrdem)
    );
	
	create table Pagamento(
		idPagamento  int primary key not null auto_increment,
        idOrdem int not null,
        forma_pagamento Enum('Cartão de crédito', 'Cartão de débito', 'Boleto', 'Pix'),
        valor_pago decimal(10,2) not null,
        data_pagamento decimal(10,2) not null,
        constraint fk_pagamento_ordem foreign key (idOrdem) 
        references Ordem_De_Serviço(idOrdem)
	);
    
    show tables;
    describe Cliente;
    describe Veiculo;
    describe Funcionário;
    describe Serviço;
    describe Ordem_De_Serviço;
    describe Item_Serviço;
    describe Pagamento;
    
SHOW CREATE TABLE Veiculo;
SHOW CREATE TABLE Ordem_De_Serviço;
SHOW CREATE TABLE Item_Serviço;
SHOW CREATE TABLE Pagamento;

    
    

    
    


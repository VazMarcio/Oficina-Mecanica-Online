Create database if not exists Projeto_Oficina_Mecanica;
Use Projeto_Oficina_Mecanica;

-- Criação das tabelas

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
    idCliente Int Not null
    );
   

    
    


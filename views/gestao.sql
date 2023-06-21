CREATE DATABASE gestao;

create table medicos
(
	nome varchar(100) not null,
    idade int not null,
    rg varchar(14) not null,
    cargo varchar (30) not null,
    codigoSala varchar(10) not null,
	PRIMARY KEY (nome)

    );
     create table salas
(
	codigoSala varchar (10) not null,
	PRIMARY KEY (codigoSala)
    );
      create table recepcionistas
(
	senha varchar(50) not null,
    nome varchar(50) not null,
	PRIMARY KEY (senha)
    );
    ALTER TABLE medicos 
    add foreign key (codigoSala)
references salas (codigoSala);
    
    INSERT INTO salas (codigoSala)
    VALUES("A01");
     INSERT INTO salas (codigoSala)
    VALUES("A02");
     INSERT INTO salas (codigoSala)
    VALUES("A03");
    
   INSERT INTO medicos (nome, cpf, codigoSala)
    Values ("Felipe Lima de Silva", "432.748.012-43", "A01");
		INSERT INTO medicos (nome, cpf, codigoSala)
    Values ("Carlos Nóbrega de Souza", "258.129.936-10", "A02");
		INSERT INTO medicos (nome, cpf, codigoSala)
    Values ("Mariany Coelho Viana", "588.929.167-22", "A03");
    
   INSERT INTO recepcionistas (nome)
   VALUES ("Diane Rocha da Cunha");
   INSERT INTO recepcionistas (nome)
   VALUES ("Cristine Farias Melo");
    INSERT INTO recepcionistas (nome)
   VALUES ("Mirian Sousa Félix Brito");
    SELECT * FROM medicos;
    SELECT * FROM medicos
order by nome;
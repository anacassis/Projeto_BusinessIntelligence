CREATE DATABASE comercio_oltp;
GO
USE comercio_oltp

DROP TABLE cliente;

CREATE TABLE cliente(
	idcliente INT PRIMARY KEY IDENTITY,
	nome VARCHAR(30) NOT NULL,
	sobrenome VARCHAR(30) NOT NULL,
	email VARCHAR(100) NOT NULL,
	sexo CHAR(1) NOT NULL,
	nascimento DATE NOT NULL)
GO

CREATE TABLE endereco_cliente(
	idendereco INT PRIMARY KEY IDENTITY,
	rua VARCHAR(100) NOT NULL, 
	cidade VARCHAR(50) NOT NULL,
	estado VARCHAR(20) NOT NULL,
	regiao VARCHAR(20) NOT NULL,
	id_cliente INT UNIQUE)
GO

DROP TABLE vendedor
go

CREATE TABLE vendedor(
	idvendedor INT PRIMARY KEY IDENTITY,
	nome VARCHAR(30) NOT NULL,
	sexo CHAR(1) NOT NULL,
	email VARCHAR(30) NOT NULL,
	id_vendedor INT);
GO

CREATE TABLE categoria(
	idcategoria INT PRIMARY KEY IDENTITY,
	nome VARCHAR(50) NOT NULL);
GO

CREATE TABLE fornecedor(
	idfornecedor INT PRIMARY KEY IDENTITY,
	nome VARCHAR(50) NOT NULL);
GO

CREATE TABLE produto(
	idproduto INT PRIMARY KEY IDENTITY,
	produto VARCHAR(100) NOT NULL,
	valor NUMERIC(10,2) NOT NULL,
	custo_medio NUMERIC(10,2),
	id_categoria INT,
id_fornecedor INT);
GO

CREATE TABLE forma_pagamento(
	idforma INT PRIMARY KEY IDENTITY,
	forma_pagamento VARCHAR(50) NOT NULL);
GO

CREATE TABLE item_nota(
	iditem INT PRIMARY KEY IDENTITY,
	id_produt INT,
	id_nota_fiscal INT,
	qtd INT,
	total NUMERIC(10,2))
GO

CREATE TABLE nota_fiscal(
	idnota INT PRIMARY KEY IDENTITY(1000,10),
	data_venda DATE,
	valor_total NUMERIC(10,2),
	id_vendedor INT,
	id_forma INT,
	id_cliente INT)
GO

/* INSER��O  CLIENTE */
insert into CLIENTE values(N'Luan',N'Costa',N'LuanRodriguesCosta@supermail.com',N'M','1981-04-22 ');
 insert into CLIENTE values(N'Thiago',N'Castro',N'ThiagoGomesCastro@superrito.com',N'M','1979-11-30 ');
insert into CLIENTE values(N'Clara',N'Souza',N'ClaraLimaSouza@supermail.com',N'F','1989-11-07 ');
insert into CLIENTE values(N'Aline',N'Alves',N'AlineBarbosaAlves@cuvox.de',N'F','1970-11-07 ');
insert into CLIENTE values(N'Caio',N'Barbosa',N'CaioGomesBarbosa@armyspy.com',N'M','1990-05-11 ');
insert into CLIENTE values(N'Kau�',N'Cunha',N'KauaPintoCunha@supermail.com',N'M','1953-09-21 ');
insert into CLIENTE values(N'Rafaela',N'Gomes',N'RafaelaRochaGomes@einrot.com',N'F','1988-01-16 ');
insert into CLIENTE values(N'Samuel',N'Lima',N'SamuelRibeiroLima@jourrapide.com',N'M','1960-04-06 ');
insert into CLIENTE values(N'Kaua',N'Rocha',N'KauaMartinsRocha@fleckens.hu',N'M','1952-10-23 ');
insert into CLIENTE values(N'J�lia',N'Azevedo',N'JuliaDiasAzevedo@supermail.com',N'F','1981-08-27 ');
insert into CLIENTE values(N'Murilo',N'Silva',N'MuriloPereiraSilva@jourrapide.com',N'M','1973-01-04 ');
insert into CLIENTE values(N'J�lio',N'Cunha',N'JulioSilvaCunha@supermail.com',N'M','1994-04-01 ');
insert into CLIENTE values(N'Amanda',N'Melo',N'AmandaPintoMelo@armyspy.com',N'F','1950-02-19 ');
insert into CLIENTE values(N'Tom�s',N'Oliveira',N'TomasSousaOliveira@gustr.com',N'M','1958-10-12 ');
insert into CLIENTE values(N'Vin�cius',N'Barros',N'ViniciusCardosoBarros@jourrapide.com',N'M','1980-07-19 ');
insert into CLIENTE values(N'Eduarda',N'Goncalves',N'EduardaCavalcantiGoncalves@cuvox.de',N'F','1957-01-27 ');
insert into CLIENTE values(N'Jos�',N'Pereira',N'JoseRochaPereira@einrot.com',N'M','1968-01-18 ');
insert into CLIENTE values(N'Diogo',N'Castro',N'DiogoAraujoCastro@gustr.com',N'M','1961-03-20 ');
insert into CLIENTE values(N'Leonardo',N'Almeida',N'LeonardoAlvesAlmeida@armyspy.com',N'M','1953-08-10 ');
insert into CLIENTE values(N'Eduarda',N'Ferreira',N'EduardaBarrosFerreira@superrito.com',N'F','1983-09-15 ');
insert into CLIENTE values(N'F�bio',N'Barbosa',N'FabioMartinsBarbosa@rhyta.com',N'M','1984-11-02 ');
insert into CLIENTE values(N'Tha�s',N'Fernandes',N'ThaisSantosFernandes@supermail.com',N'F','1988-09-11 ');
insert into CLIENTE values(N'Kai',N'Castro',N'KaiGoncalvesCastro@rhyta.com',N'M','1959-05-21 ');
insert into CLIENTE values(N'Rodrigo',N'Santos',N'RodrigoSousaSantos@gustr.com',N'M','1956-07-03 ');
insert into CLIENTE values(N'Rafael',N'Sousa',N'RafaelCostaSousa@cuvox.de',N'M','1959-03-14 ');
insert into CLIENTE values(N'Kau�',N'Pinto',N'KauaRodriguesPinto@armyspy.com',N'M','1952-12-09 ');
insert into CLIENTE values(N'Gabriela',N'Costa',N'GabrielaMeloCosta@superrito.com',N'F','1989-07-23 ');
insert into CLIENTE values(N'Carlos',N'Ferreira',N'CarlosPintoFerreira@jourrapide.com',N'M','1985-09-17 ');
insert into CLIENTE values(N'Leila',N'Melo',N'LeilaCastroMelo@supermail.com',N'F','1955-06-03 ');
insert into CLIENTE values(N'Manuela',N'Costa',N'ManuelaCorreiaCosta@jourrapide.com',N'F','1950-03-02 ');
insert into CLIENTE values(N'Sofia',N'Dias',N'SofiaRochaDias@teleworm.us',N'F','1983-10-08 ');
insert into CLIENTE values(N'Arthur',N'Rodrigues',N'ArthurCastroRodrigues@gustr.com',N'M','1985-05-09 ');
insert into CLIENTE values(N'Vitor',N'Barros',N'VitorAlvesBarros@einrot.com',N'M','1964-09-30 ');
insert into CLIENTE values(N'Eduarda',N'Cavalcanti',N'EduardaLimaCavalcanti@fleckens.hu',N'F','1969-03-02 ');
insert into CLIENTE values(N'Danilo',N'Sousa',N'DaniloSantosSousa@einrot.com',N'M','1970-07-15 ');
insert into CLIENTE values(N'Tha�s',N'Pereira',N'ThaisSousaPereira@jourrapide.com',N'F','1966-08-15 ');
insert into CLIENTE values(N'Estevan',N'Cardoso',N'EstevanAraujoCardoso@fleckens.hu',N'M','1975-07-02 ');
insert into CLIENTE values(N'Nicole',N'Ribeiro',N'NicolePereiraRibeiro@cuvox.de',N'F','1983-08-03 ');
insert into CLIENTE values(N'Bruno',N'Rodrigues',N'BrunoFerreiraRodrigues@fleckens.hu',N'M','1968-04-14 ');
insert into CLIENTE values(N'Kau�',N'Oliveira',N'KaueAraujoOliveira@fleckens.hu',N'M','1991-11-02 ');
insert into CLIENTE values(N'Ant�nio',N'Correia',N'AntonioCunhaCorreia@teleworm.us',N'M','1962-05-18 ');
insert into CLIENTE values(N'Miguel',N'Ferreira',N'MiguelSouzaFerreira@rhyta.com',N'M','1971-10-22 ');
insert into CLIENTE values(N'Jos�',N'Melo',N'JoseAlmeidaMelo@gustr.com',N'M','1971-07-15 ');
insert into CLIENTE values(N'Ant�nio',N'Goncalves',N'AntonioRodriguesGoncalves@superrito.com',N'M','1960-12-30 ');
insert into CLIENTE values(N'Rafaela',N'Silva',N'RafaelaPintoSilva@supermail.com',N'F','1989-06-06 ');
insert into CLIENTE values(N'Beatriz',N'Sousa',N'BeatrizCastroSousa@superrito.com',N'F','1946-05-20 ');
insert into CLIENTE values(N'Isabella',N'Castro',N'IsabellaCunhaCastro@gustr.com',N'F','1972-10-13 ');
insert into CLIENTE values(N'Luiza',N'Pinto',N'LuizaFerreiraPinto@superrito.com',N'F','1977-10-09 ');
insert into CLIENTE values(N'Eduarda',N'Melo',N'EduardaAlmeidaMelo@fleckens.hu',N'F','1986-09-28 ');
insert into CLIENTE values(N'Arthur',N'Cunha',N'ArthurMeloCunha@supermail.com',N'M','1964-08-31 ');
insert into CLIENTE values(N'Julian',N'Sousa',N'JulianGoncalvesSousa@gustr.com',N'M','1949-08-25 ');
insert into CLIENTE values(N'Lara',N'Melo',N'LaraPereiraMelo@cuvox.de',N'F','1946-12-23 ');
insert into CLIENTE values(N'Estevan',N'Lima',N'EstevanAzevedoLima@supermail.com',N'M','1962-10-12 ');
insert into CLIENTE values(N'Maria',N'Sousa',N'MariaPereiraSousa@teleworm.us',N'F','1991-09-10 ');
insert into CLIENTE values(N'Lavinia',N'Rodrigues',N'LaviniaCarvalhoRodrigues@superrito.com',N'F','1982-05-10 ');
insert into CLIENTE values(N'Laura',N'Castro',N'LauraDiasCastro@einrot.com',N'F','1980-12-11 ');
insert into CLIENTE values(N'Camila',N'Martins',N'CamilaDiasMartins@supermail.com',N'F','1968-02-28 ');
insert into CLIENTE values(N'Luis',N'Dias',N'LuisRodriguesDias@fleckens.hu',N'M','1943-11-05 ');
insert into CLIENTE values(N'Luis',N'Castro',N'LuisFernandesCastro@cuvox.de',N'M','1975-01-23 ');
insert into CLIENTE values(N'Julia',N'Araujo',N'JuliaAzevedoAraujo@jourrapide.com',N'F','1971-04-08 ');
insert into CLIENTE values(N'Jos�',N'Alves',N'JoseDiasAlves@einrot.com',N'M','1968-06-07 ');
insert into CLIENTE values(N'Felipe',N'Gomes',N'FelipeAzevedoGomes@fleckens.hu',N'M','1951-11-16 ');
insert into CLIENTE values(N'Julian',N'Sousa',N'JulianDiasSousa@fleckens.hu',N'M','1973-09-26 ');
insert into CLIENTE values(N'Estevan',N'Barbosa',N'EstevanLimaBarbosa@armyspy.com',N'M','1993-09-14 ');
insert into CLIENTE values(N'Leila',N'Rocha',N'LeilaAzevedoRocha@teleworm.us',N'F','1958-05-20 ');
insert into CLIENTE values(N'Clara',N'Pereira',N'ClaraRibeiroPereira@gustr.com',N'F','1990-01-12 ');
insert into CLIENTE values(N'Kaua',N'Almeida',N'KauaMeloAlmeida@supermail.com',N'M','1945-12-22 ');
insert into CLIENTE values(N'Gabriel',N'Souza',N'GabrielCunhaSouza@rhyta.com',N'M','1987-08-06 ');
insert into CLIENTE values(N'Marina',N'Barbosa',N'MarinaCastroBarbosa@jourrapide.com',N'F','1966-05-10 ');
insert into CLIENTE values(N'Amanda',N'Cavalcanti',N'AmandaSousaCavalcanti@superrito.com',N'F','1968-09-27 ');
insert into CLIENTE values(N'Gabrielle',N'Castro',N'GabrielleCavalcantiCastro@supermail.com',N'F','1945-05-15 ');
insert into CLIENTE values(N'Beatriz',N'Correia',N'BeatrizRochaCorreia@armyspy.com',N'F','1972-09-22 ');
insert into CLIENTE values(N'Cau�',N'Carvalho',N'CauaAlvesCarvalho@teleworm.us',N'M','1968-10-20 ');
insert into CLIENTE values(N'Fernanda',N'Lima',N'FernandaPereiraLima@armyspy.com',N'F','1976-02-08 ');
insert into CLIENTE values(N'�gatha',N'Fernandes',N'AgathaBarrosFernandes@superrito.com',N'F','1994-07-15 ');
insert into CLIENTE values(N'Luan',N'Rodrigues',N'LuanPintoRodrigues@fleckens.hu',N'M','1949-11-07 ');
insert into CLIENTE values(N'Paulo',N'Ferreira',N'PauloRodriguesFerreira@superrito.com',N'M','1954-12-16 ');
insert into CLIENTE values(N'Yasmin',N'Barros',N'YasminDiasBarros@einrot.com',N'F','1945-09-30 ');
insert into CLIENTE values(N'Bruna',N'Santos',N'BrunaCavalcantiSantos@jourrapide.com',N'F','1980-07-06 ');
insert into CLIENTE values(N'Nicolas',N'Cunha',N'NicolasPintoCunha@einrot.com',N'M','1963-08-30 ');
insert into CLIENTE values(N'Vinicius',N'Melo',N'ViniciusOliveiraMelo@einrot.com',N'M','1971-03-14 ');
insert into CLIENTE values(N'Lavinia',N'Costa',N'LaviniaGoncalvesCosta@armyspy.com',N'F','1948-04-02 ');
insert into CLIENTE values(N'Julieta',N'Santos',N'JulietaAlmeidaSantos@fleckens.hu',N'F','1975-06-10 ');
insert into CLIENTE values(N'Luiz',N'Cunha',N'LuizAlmeidaCunha@jourrapide.com',N'M','1970-12-14 ');
insert into CLIENTE values(N'Alex',N'Barros',N'AlexPintoBarros@fleckens.hu',N'M','1994-09-05 ');
insert into CLIENTE values(N'Eduardo',N'Correia',N'EduardoAraujoCorreia@jourrapide.com',N'M','1950-01-31 ');
insert into CLIENTE values(N'Livia',N'Almeida',N'LiviaCavalcantiAlmeida@gustr.com',N'F','1981-10-08 ');
insert into CLIENTE values(N'Vin�cius',N'Ferreira',N'ViniciusAlmeidaFerreira@teleworm.us',N'M','1971-11-27 ');
insert into CLIENTE values(N'Danilo',N'Ferreira',N'DaniloSantosFerreira@supermail.com',N'M','1977-09-10 ');
insert into CLIENTE values(N'Miguel',N'Azevedo',N'MiguelFernandesAzevedo@cuvox.de',N'M','1990-12-24 ');
insert into CLIENTE values(N'Lavinia',N'Cavalcanti',N'LaviniaRodriguesCavalcanti@superrito.com',N'F','1979-08-10 ');
insert into CLIENTE values(N'Arthur',N'Lima',N'ArthurAlvesLima@supermail.com',N'M','1993-10-04 ');
insert into CLIENTE values(N'Erick',N'Ferreira',N'ErickAlmeidaFerreira@superrito.com',N'M','1985-09-21 ');
insert into CLIENTE values(N'Kai',N'Souza',N'KaiRodriguesSouza@einrot.com',N'M','1994-09-03 ');
insert into CLIENTE values(N'Maria',N'Castro',N'MariaCardosoCastro@rhyta.com',N'F','1971-09-16 ');
insert into CLIENTE values(N'Tom�s',N'Melo',N'TomasCostaMelo@superrito.com',N'M','1949-04-06 ');
insert into CLIENTE values(N'Marina',N'Dias',N'MarinaAzevedoDias@supermail.com',N'F','1995-01-26 ');
insert into CLIENTE values(N'Mariana',N'Dias',N'MarianaCardosoDias@cuvox.de',N'F','1961-06-08 ');
insert into CLIENTE values(N'T�nia',N'Fernandes',N'TaniaGomesFernandes@superrito.com',N'F','1970-12-12 ');
insert into CLIENTE values(N'Carlos',N'Gomes',N'CarlosOliveiraGomes@teleworm.us',N'M','1984-03-18 ');
insert into CLIENTE values(N'Larissa',N'Cunha',N'LarissaPereiraCunha@superrito.com',N'F','1972-05-29 ');
insert into CLIENTE values(N'Leonardo',N'Rodrigues',N'LeonardoAlmeidaRodrigues@superrito.com',N'M','1950-05-14 ');
insert into CLIENTE values(N'Mateus',N'Martins',N'MateusSantosMartins@jourrapide.com',N'M','1984-01-26 ');
insert into CLIENTE values(N'Kau�',N'Barros',N'KauaRochaBarros@gustr.com',N'M','1990-10-22 ');
insert into CLIENTE values(N'Kau�',N'Pereira',N'KauaCunhaPereira@teleworm.us',N'M','1951-03-14 ');
insert into CLIENTE values(N'Martim',N'Oliveira',N'MartimCastroOliveira@armyspy.com',N'M','1973-10-08 ');
insert into CLIENTE values(N'Martim',N'Castro',N'MartimBarrosCastro@gustr.com',N'M','1962-07-28 ');
insert into CLIENTE values(N'Victor',N'Castro',N'VictorCunhaCastro@einrot.com',N'M','1959-10-05 ');
insert into CLIENTE values(N'Sophia',N'Azevedo',N'SophiaCastroAzevedo@einrot.com',N'F','1984-11-02 ');
insert into CLIENTE values(N'Beatrice',N'Barbosa',N'BeatriceSouzaBarbosa@rhyta.com',N'F','1990-11-27 ');
insert into CLIENTE values(N'Luiza',N'Melo',N'LuizaOliveiraMelo@einrot.com',N'F','1957-09-21 ');
insert into CLIENTE values(N'Lavinia',N'Melo',N'LaviniaCavalcantiMelo@teleworm.us',N'F','1972-02-03 ');
insert into CLIENTE values(N'Joao',N'Cavalcanti',N'JoaoRibeiroCavalcanti@rhyta.com',N'M','1946-09-25 ');
insert into CLIENTE values(N'Jo�o',N'Ribeiro',N'JoaoLimaRibeiro@einrot.com',N'M','1950-04-27 ');
insert into CLIENTE values(N'Sophia',N'Alves',N'SophiaCorreiaAlves@jourrapide.com',N'F','1972-09-20 ');
insert into CLIENTE values(N'Ot�vio',N'Rodrigues',N'OtavioFernandesRodrigues@teleworm.us',N'M','1971-01-13 ');
insert into CLIENTE values(N'Bruno',N'Silva',N'BrunoRodriguesSilva@superrito.com',N'M','1974-05-12 ');
insert into CLIENTE values(N'Marcos',N'Dias',N'MarcosRochaDias@einrot.com',N'M','1959-03-06 ');
insert into CLIENTE values(N'Isabela',N'Lima',N'IsabelaPintoLima@fleckens.hu',N'F','1975-12-22 ');
insert into CLIENTE values(N'Evelyn',N'Carvalho',N'EvelynRibeiroCarvalho@superrito.com',N'F','1989-01-25 ');
insert into CLIENTE values(N'Marcos',N'Castro',N'MarcosAlvesCastro@armyspy.com',N'M','1949-11-23 ');
insert into CLIENTE values(N'Nicolash',N'Goncalves',N'NicolashCarvalhoGoncalves@armyspy.com',N'M','1975-08-10 ');
insert into CLIENTE values(N'J�lia',N'Fernandes',N'JuliaCardosoFernandes@armyspy.com',N'F','1976-01-16 ');
insert into CLIENTE values(N'Martim',N'Correia',N'MartimCostaCorreia@rhyta.com',N'M','1966-07-03 ');
insert into CLIENTE values(N'Samuel',N'Azevedo',N'SamuelOliveiraAzevedo@fleckens.hu',N'M','1963-01-18 ');
insert into CLIENTE values(N'Isabela',N'Azevedo',N'IsabelaFernandesAzevedo@rhyta.com',N'F','1950-02-19 ');
insert into CLIENTE values(N'Amanda',N'Cavalcanti',N'AmandaGomesCavalcanti@gustr.com',N'F','1949-03-14 ');
insert into CLIENTE values(N'Alex',N'Cardoso',N'AlexRochaCardoso@gustr.com',N'M','1978-03-04 ');
insert into CLIENTE values(N'Melissa',N'Azevedo',N'MelissaMeloAzevedo@fleckens.hu',N'F','1975-01-29 ');
insert into CLIENTE values(N'Daniel',N'Fernandes',N'DanielAlmeidaFernandes@rhyta.com',N'M','1955-12-07 ');
insert into CLIENTE values(N'Isabella',N'Goncalves',N'IsabellaAlmeidaGoncalves@einrot.com',N'F','1984-04-14 ');
insert into CLIENTE values(N'Kau�',N'Pereira',N'KaueBarbosaPereira@teleworm.us',N'M','1947-12-26 ');
insert into CLIENTE values(N'Renan',N'Carvalho',N'RenanSousaCarvalho@fleckens.hu',N'M','1992-02-07 ');
insert into CLIENTE values(N'Leonardo',N'Ferreira',N'LeonardoCardosoFerreira@superrito.com',N'M','1949-05-22 ');
insert into CLIENTE values(N'Gustavo',N'Correia',N'GustavoOliveiraCorreia@rhyta.com',N'M','1994-02-03 ');
insert into CLIENTE values(N'Samuel',N'Ribeiro',N'SamuelRochaRibeiro@teleworm.us',N'M','1985-10-30 ');
insert into CLIENTE values(N'Isabela',N'Goncalves',N'IsabelaAlmeidaGoncalves@superrito.com',N'F','1994-03-23 ');
insert into CLIENTE values(N'Maria',N'Rocha',N'MariaAraujoRocha@cuvox.de',N'F','1979-05-08 ');
insert into CLIENTE values(N'Kaua',N'Santos',N'KauaSilvaSantos@cuvox.de',N'M','1974-07-01 ');
insert into CLIENTE values(N'Vitoria',N'Carvalho',N'VitoriaCavalcantiCarvalho@rhyta.com',N'F','1948-09-07 ');
insert into CLIENTE values(N'Murilo',N'Sousa',N'MuriloCunhaSousa@gustr.com',N'M','1976-03-26 ');
insert into CLIENTE values(N'Samuel',N'Azevedo',N'SamuelMeloAzevedo@einrot.com',N'M','1969-03-30 ');
insert into CLIENTE values(N'T�nia',N'Martins',N'TaniaDiasMartins@teleworm.us',N'F','1947-10-29 ');
insert into CLIENTE values(N'Fernanda',N'Cunha',N'FernandaDiasCunha@einrot.com',N'F','1970-09-09 ');
insert into CLIENTE values(N'Marina',N'Pinto',N'MarinaBarrosPinto@einrot.com',N'F','1982-10-29 ');
insert into CLIENTE values(N'Leonor',N'Santos',N'LeonorSousaSantos@rhyta.com',N'F','1986-11-29 ');
insert into CLIENTE values(N'Luis',N'Pereira',N'LuisDiasPereira@armyspy.com',N'M','1975-08-07 ');
insert into CLIENTE values(N'Beatriz',N'Rocha',N'BeatrizRibeiroRocha@supermail.com',N'F','1946-09-06 ');
insert into CLIENTE values(N'Vin�cius',N'Almeida',N'ViniciusMeloAlmeida@fleckens.hu',N'M','1955-11-27 ');
insert into CLIENTE values(N'Joao',N'Ribeiro',N'JoaoMartinsRibeiro@jourrapide.com',N'M','1991-08-18 ');
insert into CLIENTE values(N'Vit�ria',N'Alves',N'VitoriaAlmeidaAlves@armyspy.com',N'F','1947-09-05 ');
insert into CLIENTE values(N'Lu�s',N'Martins',N'LuisRibeiroMartins@teleworm.us',N'M','1981-01-13 ');
insert into CLIENTE values(N'Beatriz',N'Lima',N'BeatrizSouzaLima@rhyta.com',N'F','1959-10-06 ');
insert into CLIENTE values(N'Samuel',N'Ribeiro',N'SamuelAlvesRibeiro@jourrapide.com',N'M','1975-02-23 ');
insert into CLIENTE values(N'Ryan',N'Alves',N'RyanGomesAlves@fleckens.hu',N'M','1995-02-19 ');
insert into CLIENTE values(N'Maria',N'Oliveira',N'MariaDiasOliveira@teleworm.us',N'F','1945-02-14 ');
insert into CLIENTE values(N'Andr�',N'Sousa',N'AndreDiasSousa@rhyta.com',N'M','1985-11-17 ');
insert into CLIENTE values(N'J�lia',N'Costa',N'JuliaAlvesCosta@cuvox.de',N'F','1968-07-02 ');
insert into CLIENTE values(N'Enzo',N'Dias',N'EnzoGoncalvesDias@jourrapide.com',N'M','1952-07-31 ');
insert into CLIENTE values(N'Amanda',N'Melo',N'AmandaAlmeidaMelo@armyspy.com',N'F','1958-12-11 ');
insert into CLIENTE values(N'Murilo',N'Dias',N'MuriloCunhaDias@teleworm.us',N'M','1994-06-15 ');
insert into CLIENTE values(N'Gabriel',N'Almeida',N'GabrielBarbosaAlmeida@armyspy.com',N'M','1947-03-30 ');
insert into CLIENTE values(N'Vin�cius',N'Oliveira',N'ViniciusBarbosaOliveira@fleckens.hu',N'M','1976-09-07 ');
insert into CLIENTE values(N'Felipe',N'Costa',N'FelipeAlvesCosta@armyspy.com',N'M','1975-11-28 ');
insert into CLIENTE values(N'Bruno',N'Almeida',N'BrunoGomesAlmeida@rhyta.com',N'M','1989-08-26 ');
insert into CLIENTE values(N'Nicole',N'Rodrigues',N'NicoleMartinsRodrigues@rhyta.com',N'F','1953-08-16 ');
insert into CLIENTE values(N'Miguel',N'Ribeiro',N'MiguelGoncalvesRibeiro@jourrapide.com',N'M','1989-03-09 ');
insert into CLIENTE values(N'Carolina',N'Cardoso',N'CarolinaMeloCardoso@supermail.com',N'F','1983-10-25 ');
insert into CLIENTE values(N'Kai',N'Correia',N'KaiSouzaCorreia@rhyta.com',N'M','1958-09-27 ');
insert into CLIENTE values(N'Beatriz',N'Correia',N'BeatrizOliveiraCorreia@teleworm.us',N'F','1967-08-19 ');
insert into CLIENTE values(N'Carlos',N'Azevedo',N'CarlosCostaAzevedo@supermail.com',N'M','1966-09-22 ');
insert into CLIENTE values(N'Douglas',N'Barros',N'DouglasRibeiroBarros@rhyta.com',N'M','1974-06-23 ');
insert into CLIENTE values(N'Gabrielle',N'Correia',N'GabrielleCavalcantiCorreia@cuvox.de',N'F','1994-05-13 ');
insert into CLIENTE values(N'Vit�r',N'Araujo',N'VitorGomesAraujo@supermail.com',N'M','1956-08-08 ');
insert into CLIENTE values(N'Lara',N'Melo',N'LaraSouzaMelo@cuvox.de',N'F','1973-05-08 ');
insert into CLIENTE values(N'Rodrigo',N'Cavalcanti',N'RodrigoBarrosCavalcanti@jourrapide.com',N'M','1959-01-23 ');
insert into CLIENTE values(N'Caio',N'Almeida',N'CaioPereiraAlmeida@teleworm.us',N'M','1984-04-11 ');
insert into CLIENTE values(N'Igor',N'Sousa',N'IgorDiasSousa@armyspy.com',N'M','1990-05-18 ');
insert into CLIENTE values(N'Clara',N'Correia',N'ClaraBarbosaCorreia@fleckens.hu',N'F','1967-09-21 ');
insert into CLIENTE values(N'Amanda',N'Fernandes',N'AmandaCunhaFernandes@rhyta.com',N'F','1992-09-15 ');
insert into CLIENTE values(N'Victor',N'Cardoso',N'VictorFerreiraCardoso@armyspy.com',N'M','1970-12-25 ');
insert into CLIENTE values(N'Carlos',N'Cunha',N'CarlosCorreiaCunha@gustr.com',N'M','1946-04-14 ');
insert into CLIENTE values(N'Danilo',N'Santos',N'DaniloCardosoSantos@jourrapide.com',N'M','1983-09-11 ');
insert into CLIENTE values(N'Bianca',N'Correia',N'BiancaSouzaCorreia@einrot.com',N'F','1980-03-12 ');
insert into CLIENTE values(N'Felipe',N'Barbosa',N'FelipeSousaBarbosa@armyspy.com',N'M','1982-10-28 ');
insert into CLIENTE values(N'Livia',N'Pinto',N'LiviaCastroPinto@fleckens.hu',N'F','1948-03-09 ');
insert into CLIENTE values(N'Eduarda',N'Dias',N'EduardaRodriguesDias@cuvox.de',N'F','1982-08-31 ');
insert into CLIENTE values(N'Gustavo',N'Silva',N'GustavoFerreiraSilva@teleworm.us',N'M','1989-10-17 ');
insert into CLIENTE values(N'J�lia',N'Goncalves',N'JuliaSilvaGoncalves@rhyta.com',N'F','1985-07-07 ');
insert into CLIENTE values(N'Rafael',N'Almeida',N'RafaelRochaAlmeida@rhyta.com',N'M','1974-11-26 ');
insert into CLIENTE values(N'Julieta',N'Melo',N'JulietaCunhaMelo@supermail.com',N'F','1967-09-25 ');
insert into CLIENTE values(N'Kau�',N'Rodrigues',N'KauaOliveiraRodrigues@cuvox.de',N'M','1990-03-31 ');
insert into CLIENTE values(N'Isabela',N'Costa',N'IsabelaMartinsCosta@teleworm.us',N'F','1952-08-24 ');
insert into CLIENTE values(N'Tha�s',N'Barros',N'ThaisFerreiraBarros@cuvox.de',N'F','1986-12-30 ');
insert into CLIENTE values(N'Julieta',N'Martins',N'JulietaDiasMartins@supermail.com',N'F','1957-02-27 ');
insert into CLIENTE values(N'Livia',N'Rocha',N'LiviaPintoRocha@superrito.com',N'F','1964-07-19 ');
insert into CLIENTE values(N'T�nia',N'Lima',N'TaniaCunhaLima@einrot.com',N'F','1992-12-17 ');
insert into CLIENTE values(N'Joao',N'Martins',N'JoaoCavalcantiMartins@einrot.com',N'M','1952-04-12 ');
insert into CLIENTE values(N'Eduardo',N'Carvalho',N'EduardoBarbosaCarvalho@armyspy.com',N'M','1944-07-09 ');
insert into CLIENTE values(N'Lucas',N'Almeida',N'LucasLimaAlmeida@superrito.com',N'M','1948-03-30 ');
insert into CLIENTE values(N'J�lia',N'Lima',N'JuliaCarvalhoLima@cuvox.de',N'F','1962-03-13 ');
insert into CLIENTE values(N'Pedro',N'Azevedo',N'PedroFerreiraAzevedo@armyspy.com',N'M','1960-03-24 ');
insert into CLIENTE values(N'Ant�nio',N'Fernandes',N'AntonioSantosFernandes@jourrapide.com',N'M','1955-07-24 ');
insert into CLIENTE values(N'Giovana',N'Gomes',N'GiovanaBarrosGomes@einrot.com',N'F','1980-10-04 ');
insert into CLIENTE values(N'Raissa',N'Cunha',N'RaissaAlvesCunha@cuvox.de',N'F','1958-01-16 ');
insert into CLIENTE values(N'Matilde',N'Barbosa',N'MatildePereiraBarbosa@einrot.com',N'F','1984-09-26 ');
insert into CLIENTE values(N'Gabriela',N'Cunha',N'GabrielaCavalcantiCunha@superrito.com',N'F','1949-07-18 ');
insert into CLIENTE values(N'Julia',N'Costa',N'JuliaFerreiraCosta@supermail.com',N'F','1984-09-15 ');
insert into CLIENTE values(N'Ryan',N'Barros',N'RyanAraujoBarros@cuvox.de',N'M','1987-04-06 ');
insert into CLIENTE values(N'Rodrigo',N'Pereira',N'RodrigoCardosoPereira@einrot.com',N'M','1960-03-24 ');
insert into CLIENTE values(N'Julia',N'Rodrigues',N'JuliaGoncalvesRodrigues@fleckens.hu',N'F','1965-05-11 ');
insert into CLIENTE values(N'Kau�',N'Alves',N'KauaCostaAlves@supermail.com',N'M','1985-05-22 ');
insert into CLIENTE values(N'Marina',N'Cunha',N'MarinaDiasCunha@jourrapide.com',N'F','1946-04-24 ');
insert into CLIENTE values(N'Davi',N'Pereira',N'DaviCorreiaPereira@jourrapide.com',N'M','1982-06-07 ');
insert into CLIENTE values(N'Sarah',N'Almeida',N'SarahSantosAlmeida@gustr.com',N'F','1980-08-22 ');
insert into CLIENTE values(N'Lucas',N'Gomes',N'LucasDiasGomes@armyspy.com',N'M','1988-05-05 ');
insert into CLIENTE values(N'Tha�s',N'Santos',N'ThaisMeloSantos@gustr.com',N'F','1954-03-14 ');
insert into CLIENTE values(N'Lucas',N'Pereira',N'LucasPintoPereira@teleworm.us',N'M','1950-09-10 ');
insert into CLIENTE values(N'Bruno',N'Dias',N'BrunoBarbosaDias@gustr.com',N'M','1946-05-31 ');
insert into CLIENTE values(N'Gabrielly',N'Martins',N'GabriellyOliveiraMartins@cuvox.de',N'F','1964-10-18 ');
insert into CLIENTE values(N'Laura',N'Azevedo',N'LauraFerreiraAzevedo@einrot.com',N'F','1963-06-02 ');
insert into CLIENTE values(N'Kau�',N'Barbosa',N'KaueSousaBarbosa@jourrapide.com',N'M','1990-03-08 ');
insert into CLIENTE values(N'Marisa',N'Costa',N'MarisaSousaCosta@fleckens.hu',N'F','1977-01-26 ');
insert into CLIENTE values(N'Emilly',N'Sousa',N'EmillyAzevedoSousa@armyspy.com',N'F','1978-10-15 ');
insert into CLIENTE values(N'Danilo',N'Alves',N'DaniloCavalcantiAlves@rhyta.com',N'M','1972-05-16 ');
insert into CLIENTE values(N'Rodrigo',N'Ferreira',N'RodrigoGoncalvesFerreira@rhyta.com',N'M','1975-05-07 ');
insert into CLIENTE values(N'Sofia',N'Rocha',N'SofiaCastroRocha@teleworm.us',N'F','1956-01-02 ');
insert into CLIENTE values(N'Clara',N'Cavalcanti',N'ClaraBarrosCavalcanti@cuvox.de',N'F','1968-08-08 ');
insert into CLIENTE values(N'Gustavo',N'Castro',N'GustavoPintoCastro@einrot.com',N'M','1961-11-14 ');
insert into CLIENTE values(N'Sophia',N'Correia',N'SophiaRochaCorreia@teleworm.us',N'F','1994-01-22 ');
insert into CLIENTE values(N'Manuela',N'Melo',N'ManuelaCostaMelo@einrot.com',N'F','1952-04-28 ');
insert into CLIENTE values(N'Anna',N'Lima',N'AnnaCardosoLima@cuvox.de',N'F','1955-02-28 ');
insert into CLIENTE values(N'Emilly',N'Barbosa',N'EmillyOliveiraBarbosa@gustr.com',N'F','1947-12-18 ');
insert into CLIENTE values(N'Andr�',N'Silva',N'AndreSantosSilva@cuvox.de',N'M','1978-11-11 ');
insert into CLIENTE values(N'Camila',N'Cunha',N'CamilaCavalcantiCunha@einrot.com',N'F','1982-12-22 ');
insert into CLIENTE values(N'Lavinia',N'Gomes',N'LaviniaCardosoGomes@einrot.com',N'F','1976-11-23 ');
insert into CLIENTE values(N'Vitoria',N'Ribeiro',N'VitoriaSantosRibeiro@cuvox.de',N'F','1946-09-09 ');
insert into CLIENTE values(N'Ot�vio',N'Almeida',N'OtavioCunhaAlmeida@rhyta.com',N'M','1987-09-04 ');
insert into CLIENTE values(N'Fernanda',N'Rocha',N'FernandaAlmeidaRocha@cuvox.de',N'F','1988-04-06 ');
insert into CLIENTE values(N'Ryan',N'Gomes',N'RyanRochaGomes@gustr.com',N'M','1961-07-19 ');
insert into CLIENTE values(N'Caio',N'Lima',N'CaioAzevedoLima@armyspy.com',N'M','1951-05-24 ');
insert into CLIENTE values(N'Laura',N'Cavalcanti',N'LauraPereiraCavalcanti@armyspy.com',N'F','1944-05-29 ');
insert into CLIENTE values(N'Estevan',N'Carvalho',N'EstevanMartinsCarvalho@cuvox.de',N'M','1960-09-17 ');
insert into CLIENTE values(N'Luana',N'Martins',N'LuanaBarbosaMartins@gustr.com',N'F','1965-03-10 ');
insert into CLIENTE values(N'Emily',N'Rodrigues',N'EmilyMartinsRodrigues@fleckens.hu',N'F','1964-05-19 ');
insert into CLIENTE values(N'Luis',N'Carvalho',N'LuisCostaCarvalho@einrot.com',N'M','1947-02-24 ');
insert into CLIENTE values(N'Cau�',N'Azevedo',N'CauaSousaAzevedo@einrot.com',N'M','1977-05-20 ');
insert into CLIENTE values(N'Clara',N'Cardoso',N'ClaraRochaCardoso@fleckens.hu',N'F','1966-02-05 ');
insert into CLIENTE values(N'Isabelle',N'Barbosa',N'IsabelleCunhaBarbosa@superrito.com',N'F','1967-04-08 ');
insert into CLIENTE values(N'Mateus',N'Barbosa',N'MateusAlvesBarbosa@fleckens.hu',N'M','1965-01-19 ');
insert into CLIENTE values(N'Kau�',N'Melo',N'KauaCarvalhoMelo@cuvox.de',N'M','1961-08-13 ');
insert into CLIENTE values(N'Leila',N'Goncalves',N'LeilaBarrosGoncalves@fleckens.hu',N'F','1993-03-27 ');
insert into CLIENTE values(N'Julian',N'Cunha',N'JulianFerreiraCunha@jourrapide.com',N'M','1953-01-26 ');
insert into CLIENTE values(N'Lara',N'Alves',N'LaraPereiraAlves@gustr.com',N'F','1974-12-18 ');
insert into CLIENTE values(N'Bianca',N'Rocha',N'BiancaPereiraRocha@fleckens.hu',N'F','1943-08-04 ');
insert into CLIENTE values(N'Bruno',N'Costa',N'BrunoCunhaCosta@cuvox.de',N'M','1965-04-17 ');
insert into CLIENTE values(N'J�lio',N'Cunha',N'JulioCostaCunha@rhyta.com',N'M','1970-05-20 ');
insert into CLIENTE values(N'Sophia',N'Almeida',N'SophiaCardosoAlmeida@fleckens.hu',N'F','1988-03-14 ');
insert into CLIENTE values(N'Julia',N'Pinto',N'JuliaPereiraPinto@fleckens.hu',N'F','1967-09-23 ');
insert into CLIENTE values(N'Camila',N'Carvalho',N'CamilaOliveiraCarvalho@supermail.com',N'F','1972-02-02 ');
insert into CLIENTE values(N'Diogo',N'Lima',N'DiogoRodriguesLima@gustr.com',N'M','1952-01-26 ');
insert into CLIENTE values(N'Giovana',N'Silva',N'GiovanaCorreiaSilva@fleckens.hu',N'F','1989-10-15 ');
insert into CLIENTE values(N'Caio',N'Correia',N'CaioAraujoCorreia@gustr.com',N'M','1974-03-30 ');
insert into CLIENTE values(N'Lucas',N'Melo',N'LucasCardosoMelo@teleworm.us',N'M','1986-04-14 ');
insert into CLIENTE values(N'Guilherme',N'Costa',N'GuilhermeFernandesCosta@jourrapide.com',N'M','1959-05-22 ');
insert into CLIENTE values(N'Carlos',N'Barros',N'CarlosAzevedoBarros@jourrapide.com',N'M','1947-10-29 ');
insert into CLIENTE values(N'Lavinia',N'Azevedo',N'LaviniaAlmeidaAzevedo@cuvox.de',N'F','1985-10-18 ');
insert into CLIENTE values(N'Kauan',N'Azevedo',N'KauanBarrosAzevedo@armyspy.com',N'M','1969-11-11 ');
insert into CLIENTE values(N'Vinicius',N'Ferreira',N'ViniciusCunhaFerreira@gustr.com',N'M','1992-07-29 ');
insert into CLIENTE values(N'Tha�s',N'Azevedo',N'ThaisBarrosAzevedo@fleckens.hu',N'F','1994-03-13 ');
insert into CLIENTE values(N'Gabriela',N'Pinto',N'GabrielaAlvesPinto@cuvox.de',N'F','1951-02-13 ');
insert into CLIENTE values(N'Vinicius',N'Souza',N'ViniciusGoncalvesSouza@gustr.com',N'M','1983-06-17 ');
insert into CLIENTE values(N'Vin�cius',N'Fernandes',N'ViniciusAzevedoFernandes@cuvox.de',N'M','1979-11-01 ');
insert into CLIENTE values(N'Isabella',N'Cunha',N'IsabellaCarvalhoCunha@superrito.com',N'F','1977-07-06 ');
insert into CLIENTE values(N'Ana',N'Santos',N'AnaDiasSantos@rhyta.com',N'F','1963-03-18 ');
insert into CLIENTE values(N'Carolina',N'Rodrigues',N'CarolinaOliveiraRodrigues@armyspy.com',N'F','1976-01-22 ');
insert into CLIENTE values(N'Nicole',N'Martins',N'NicoleCostaMartins@gustr.com',N'F','1952-06-19 ');
insert into CLIENTE values(N'Emilly',N'Santos',N'EmillyCostaSantos@gustr.com',N'F','1983-07-31 ');
insert into CLIENTE values(N'Lu�s',N'Santos',N'LuisCorreiaSantos@armyspy.com',N'M','1956-12-30 ');
insert into CLIENTE values(N'Martim',N'Barros',N'MartimRodriguesBarros@einrot.com',N'M','1981-09-19 ');
insert into CLIENTE values(N'Victor',N'Correia',N'VictorSilvaCorreia@jourrapide.com',N'M','1987-09-10 ');
insert into CLIENTE values(N'Thiago',N'Cavalcanti',N'ThiagoRodriguesCavalcanti@fleckens.hu',N'M','1991-04-12 ');
insert into CLIENTE values(N'Carlos',N'Rocha',N'CarlosGomesRocha@supermail.com',N'M','1994-10-16 ');
insert into CLIENTE values(N'Kai',N'Costa',N'KaiRibeiroCosta@supermail.com',N'M','1947-01-15 ');
insert into CLIENTE values(N'Evelyn',N'Souza',N'EvelynRodriguesSouza@armyspy.com',N'F','1972-12-02 ');
insert into CLIENTE values(N'�gatha',N'Oliveira',N'AgathaCorreiaOliveira@jourrapide.com',N'F','1953-02-04 ');
insert into CLIENTE values(N'Julieta',N'Cardoso',N'JulietaRochaCardoso@armyspy.com',N'F','1969-06-22 ');
insert into CLIENTE values(N'Alex',N'Barbosa',N'AlexSilvaBarbosa@supermail.com',N'M','1977-04-12 ');
insert into CLIENTE values(N'Julian',N'Carvalho',N'JulianSousaCarvalho@supermail.com',N'M','1987-04-12 ');
insert into CLIENTE values(N'Daniel',N'Lima',N'DanielPereiraLima@jourrapide.com',N'M','1951-09-06 ');
insert into CLIENTE values(N'Renan',N'Goncalves',N'RenanRibeiroGoncalves@rhyta.com',N'M','1977-01-12 ');
insert into CLIENTE values(N'Vitor',N'Lima',N'VitorMeloLima@supermail.com',N'M','1984-04-14 ');
insert into CLIENTE values(N'T�nia',N'Santos',N'TaniaFerreiraSantos@einrot.com',N'F','1954-05-15 ');
insert into CLIENTE values(N'Isabella',N'Gomes',N'IsabellaLimaGomes@jourrapide.com',N'F','1965-01-01 ');
insert into CLIENTE values(N'Diogo',N'Fernandes',N'DiogoCastroFernandes@armyspy.com',N'M','1987-02-01 ');
insert into CLIENTE values(N'Rebeca',N'Carvalho',N'RebecaPintoCarvalho@supermail.com',N'F','1969-08-04 ');
insert into CLIENTE values(N'Giovanna',N'Correia',N'GiovannaCostaCorreia@armyspy.com',N'F','1948-09-11 ');
insert into CLIENTE values(N'Diogo',N'Gomes',N'DiogoMartinsGomes@superrito.com',N'M','1976-01-05 ');
insert into CLIENTE values(N'Nicole',N'Castro',N'NicoleLimaCastro@einrot.com',N'F','1969-11-19 ');
insert into CLIENTE values(N'Alice',N'Almeida',N'AliceCavalcantiAlmeida@gustr.com',N'F','1991-05-18 ');
insert into CLIENTE values(N'Vit�r',N'Sousa',N'VitorGoncalvesSousa@cuvox.de',N'M','1966-02-28 ');
insert into CLIENTE values(N'Eduardo',N'Rocha',N'EduardoCardosoRocha@armyspy.com',N'M','1975-03-15 ');
insert into CLIENTE values(N'Emilly',N'Souza',N'EmillyCunhaSouza@gustr.com',N'F','1984-12-13 ');
insert into CLIENTE values(N'Eduardo',N'Ferreira',N'EduardoDiasFerreira@einrot.com',N'M','1974-04-09 ');
insert into CLIENTE values(N'Samuel',N'Correia',N'SamuelRochaCorreia@superrito.com',N'M','1958-01-19 ');
insert into CLIENTE values(N'Arthur',N'Martins',N'ArthurFerreiraMartins@gustr.com',N'M','1993-04-23 ');
insert into CLIENTE values(N'Martim',N'Cunha',N'MartimAlvesCunha@cuvox.de',N'M','1947-01-13 ');
insert into CLIENTE values(N'Gabrielle',N'Cavalcanti',N'GabrielleFernandesCavalcanti@einrot.com',N'F','1971-03-07 ');
insert into CLIENTE values(N'Igor',N'Oliveira',N'IgorRochaOliveira@jourrapide.com',N'M','1992-07-24 ');
insert into CLIENTE values(N'Igor',N'Castro',N'IgorMeloCastro@fleckens.hu',N'M','1958-10-19 ');
insert into CLIENTE values(N'Beatriz',N'Lima',N'BeatrizSouzaLima@gustr.com',N'F','1980-02-23 ');
insert into CLIENTE values(N'Tiago',N'Ferreira',N'TiagoRibeiroFerreira@teleworm.us',N'M','1962-03-27 ');
insert into CLIENTE values(N'Sofia',N'Araujo',N'SofiaOliveiraAraujo@fleckens.hu',N'F','1958-11-30 ');
insert into CLIENTE values(N'Raissa',N'Costa',N'RaissaFerreiraCosta@superrito.com',N'F','1962-03-04 ');
insert into CLIENTE values(N'Laura',N'Castro',N'LauraCorreiaCastro@einrot.com',N'F','1983-08-21 ');
insert into CLIENTE values(N'Marisa',N'Oliveira',N'MarisaBarrosOliveira@fleckens.hu',N'F','1981-10-11 ');
insert into CLIENTE values(N'Samuel',N'Rodrigues',N'SamuelAraujoRodrigues@einrot.com',N'M','1980-04-15 ');
insert into CLIENTE values(N'Renan',N'Gomes',N'RenanMartinsGomes@superrito.com',N'M','1949-11-22 ');
insert into CLIENTE values(N'Thiago',N'Pereira',N'ThiagoCastroPereira@superrito.com',N'M','1953-12-24 ');
insert into CLIENTE values(N'Arthur',N'Cavalcanti',N'ArthurBarrosCavalcanti@einrot.com',N'M','1954-08-30 ');
insert into CLIENTE values(N'Luiza',N'Melo',N'LuizaCunhaMelo@einrot.com',N'F','1944-12-13 ');
insert into CLIENTE values(N'Estevan',N'Castro',N'EstevanSantosCastro@rhyta.com',N'M','1967-05-09 ');
insert into CLIENTE values(N'Camila',N'Rodrigues',N'CamilaCarvalhoRodrigues@fleckens.hu',N'F','1946-08-14 ');
insert into CLIENTE values(N'Luis',N'Dias',N'LuisPintoDias@supermail.com',N'M','1952-11-23 ');
insert into CLIENTE values(N'Lucas',N'Pinto',N'LucasCastroPinto@rhyta.com',N'M','1986-07-03 ');
insert into CLIENTE values(N'Luiza',N'Martins',N'LuizaRibeiroMartins@rhyta.com',N'F','1984-12-01 ');
insert into CLIENTE values(N'Igor',N'Costa',N'IgorLimaCosta@armyspy.com',N'M','1958-12-24 ');
insert into CLIENTE values(N'Jos�',N'Carvalho',N'JoseAzevedoCarvalho@fleckens.hu',N'M','1976-05-08 ');
insert into CLIENTE values(N'Caio',N'Sousa',N'CaioSouzaSousa@jourrapide.com',N'M','1945-04-03 ');
insert into CLIENTE values(N'Jo�o',N'Almeida',N'JoaoCarvalhoAlmeida@jourrapide.com',N'M','1990-08-31 ');
insert into CLIENTE values(N'Mariana',N'Cavalcanti',N'MarianaPereiraCavalcanti@supermail.com',N'F','1972-04-23 ');
insert into CLIENTE values(N'�gatha',N'Castro',N'AgathaPintoCastro@fleckens.hu',N'F','1991-02-08 ');
insert into CLIENTE values(N'Felipe',N'Oliveira',N'FelipeFerreiraOliveira@supermail.com',N'M','1976-10-14 ');
insert into CLIENTE values(N'Marina',N'Barros',N'MarinaFernandesBarros@rhyta.com',N'F','1992-11-15 ');
insert into CLIENTE values(N'Miguel',N'Cardoso',N'MiguelCastroCardoso@einrot.com',N'M','1945-10-26 ');
insert into CLIENTE values(N'Jos�',N'Araujo',N'JoseRodriguesAraujo@superrito.com',N'M','1951-02-23 ');
insert into CLIENTE values(N'Paulo',N'Cavalcanti',N'PauloSilvaCavalcanti@supermail.com',N'M','1974-06-22 ');
insert into CLIENTE values(N'Leila',N'Castro',N'LeilaAlmeidaCastro@teleworm.us',N'F','1955-11-08 ');
insert into CLIENTE values(N'Isabelle',N'Cunha',N'IsabelleBarrosCunha@armyspy.com',N'F','1946-09-10 ');
insert into CLIENTE values(N'Clara',N'Almeida',N'ClaraCorreiaAlmeida@cuvox.de',N'F','1946-05-08 ');
insert into CLIENTE values(N'J�lio',N'Pinto',N'JulioAraujoPinto@teleworm.us',N'M','1978-08-23 ');
insert into CLIENTE values(N'Fernanda',N'Araujo',N'FernandaPintoAraujo@teleworm.us',N'F','1984-01-05 ');
insert into CLIENTE values(N'Davi',N'Pereira',N'DaviGoncalvesPereira@rhyta.com',N'M','1960-06-07 ');
insert into CLIENTE values(N'Isabela',N'Correia',N'IsabelaRibeiroCorreia@cuvox.de',N'F','1978-02-28 ');
insert into CLIENTE values(N'Vitor',N'Correia',N'VitorDiasCorreia@teleworm.us',N'M','1965-03-30 ');
insert into CLIENTE values(N'Tom�s',N'Fernandes',N'TomasAzevedoFernandes@teleworm.us',N'M','1963-03-28 ');
insert into CLIENTE values(N'Kaua',N'Goncalves',N'KauaFernandesGoncalves@superrito.com',N'M','1953-08-01 ');
insert into CLIENTE values(N'Eduardo',N'Sousa',N'EduardoRodriguesSousa@rhyta.com',N'M','1981-11-22 ');
insert into CLIENTE values(N'Bruna',N'Castro',N'BrunaFerreiraCastro@supermail.com',N'F','1977-06-16 ');
insert into CLIENTE values(N'Jo�o',N'Pereira',N'JoaoBarbosaPereira@gustr.com',N'M','1943-07-02 ');
insert into CLIENTE values(N'Rebeca',N'Cardoso',N'RebecaLimaCardoso@supermail.com',N'F','1975-05-16 ');
insert into CLIENTE values(N'Tha�s',N'Goncalves',N'ThaisBarbosaGoncalves@supermail.com',N'F','1959-07-02 ');
insert into CLIENTE values(N'Nicolas',N'Azevedo',N'NicolasRibeiroAzevedo@rhyta.com',N'M','1965-08-05 ');
insert into CLIENTE values(N'Emily',N'Cunha',N'EmilyAlmeidaCunha@einrot.com',N'F','1982-10-14 ');
insert into CLIENTE values(N'Evelyn',N'Almeida',N'EvelynAzevedoAlmeida@jourrapide.com',N'F','1989-03-28 ');
insert into CLIENTE values(N'Emily',N'Fernandes',N'EmilyAraujoFernandes@armyspy.com',N'F','1960-08-26 ');
insert into CLIENTE values(N'Renan',N'Barros',N'RenanOliveiraBarros@superrito.com',N'M','1981-10-31 ');
insert into CLIENTE values(N'Manuela',N'Fernandes',N'ManuelaCarvalhoFernandes@rhyta.com',N'F','1976-08-28 ');
insert into CLIENTE values(N'Leila',N'Rodrigues',N'LeilaCavalcantiRodrigues@armyspy.com',N'F','1986-10-14 ');
insert into CLIENTE values(N'Jos�',N'Ribeiro',N'JoseCostaRibeiro@teleworm.us',N'M','1976-07-30 ');
insert into CLIENTE values(N'Giovanna',N'Oliveira',N'GiovannaMeloOliveira@jourrapide.com',N'F','1980-12-26 ');
insert into CLIENTE values(N'Melissa',N'Dias',N'MelissaCunhaDias@armyspy.com',N'F','1994-02-02 ');
insert into CLIENTE values(N'Raissa',N'Alves',N'RaissaOliveiraAlves@gustr.com',N'F','1980-09-29 ');
insert into CLIENTE values(N'Diego',N'Gomes',N'DiegoSantosGomes@armyspy.com',N'M','1949-12-09 ');
insert into CLIENTE values(N'Luan',N'Oliveira',N'LuanCarvalhoOliveira@cuvox.de',N'M','1985-05-12 ');
insert into CLIENTE values(N'Caio',N'Pereira',N'CaioSousaPereira@rhyta.com',N'M','1982-07-01 ');
insert into CLIENTE values(N'Marina',N'Pereira',N'MarinaPintoPereira@jourrapide.com',N'F','1977-06-21 ');
insert into CLIENTE values(N'Carla',N'Silva',N'CarlaAraujoSilva@rhyta.com',N'F','1972-03-04 ');
insert into CLIENTE values(N'Bianca',N'Araujo',N'BiancaRodriguesAraujo@einrot.com',N'F','1988-01-05 ');
insert into CLIENTE values(N'Vinicius',N'Barros',N'ViniciusSousaBarros@gustr.com',N'M','1958-05-30 ');
insert into CLIENTE values(N'Beatriz',N'Souza',N'BeatrizCavalcantiSouza@armyspy.com',N'F','1985-09-04 ');
insert into CLIENTE values(N'�gatha',N'Barbosa',N'AgathaLimaBarbosa@superrito.com',N'F','1984-10-12 ');
insert into CLIENTE values(N'J�lia',N'Ribeiro',N'JuliaRochaRibeiro@superrito.com',N'F','1972-10-28 ');
insert into CLIENTE values(N'Brenda',N'Oliveira',N'BrendaBarbosaOliveira@fleckens.hu',N'F','1969-01-11 ');
insert into CLIENTE values(N'Arthur',N'Araujo',N'ArthurMeloAraujo@cuvox.de',N'M','1979-11-05 ');
insert into CLIENTE values(N'Kau�',N'Castro',N'KauaSantosCastro@fleckens.hu',N'M','1966-01-29 ');
insert into CLIENTE values(N'Vitor',N'Fernandes',N'VitorFerreiraFernandes@teleworm.us',N'M','1982-08-21 ');
insert into CLIENTE values(N'Caio',N'Rocha',N'CaioAzevedoRocha@einrot.com',N'M','1980-08-04 ');
insert into CLIENTE values(N'Emily',N'Lima',N'EmilyCorreiaLima@cuvox.de',N'F','1981-10-16 ');
insert into CLIENTE values(N'Andr�',N'Martins',N'AndreAraujoMartins@supermail.com',N'M','1954-12-31 ');
insert into CLIENTE values(N'Julieta',N'Rodrigues',N'JulietaAraujoRodrigues@teleworm.us',N'F','1963-08-29 ');
insert into CLIENTE values(N'Isabelle',N'Pinto',N'IsabelleGomesPinto@armyspy.com',N'F','1983-07-07 ');
insert into CLIENTE values(N'Felipe',N'Araujo',N'FelipePintoAraujo@teleworm.us',N'M','1972-03-26 ');
insert into CLIENTE values(N'Mateus',N'Ribeiro',N'MateusGomesRibeiro@armyspy.com',N'M','1973-07-28 ');
insert into CLIENTE values(N'F�bio',N'Martins',N'FabioBarrosMartins@teleworm.us',N'M','1959-07-18 ');
insert into CLIENTE values(N'Rebeca',N'Ferreira',N'RebecaMeloFerreira@jourrapide.com',N'F','1984-06-24 ');
insert into CLIENTE values(N'Felipe',N'Carvalho',N'FelipePereiraCarvalho@fleckens.hu',N'M','1954-03-23 ');
insert into CLIENTE values(N'Rodrigo',N'Castro',N'RodrigoCostaCastro@einrot.com',N'M','1989-01-17 ');
insert into CLIENTE values(N'Tiago',N'Cavalcanti',N'TiagoLimaCavalcanti@teleworm.us',N'M','1959-04-18 ');
insert into CLIENTE values(N'Let�cia',N'Correia',N'LeticiaOliveiraCorreia@fleckens.hu',N'F','1956-10-05 ');
insert into CLIENTE values(N'Diego',N'Ribeiro',N'DiegoCardosoRibeiro@jourrapide.com',N'M','1987-09-05 ');
insert into CLIENTE values(N'Julian',N'Gomes',N'JulianSousaGomes@superrito.com',N'M','1992-04-13 ');
insert into CLIENTE values(N'Kaua',N'Ferreira',N'KauaSousaFerreira@einrot.com',N'M','1980-07-20 ');
insert into CLIENTE values(N'Beatriz',N'Souza',N'BeatrizCostaSouza@cuvox.de',N'F','1950-08-14 ');
insert into CLIENTE values(N'Guilherme',N'Oliveira',N'GuilhermeAraujoOliveira@rhyta.com',N'M','1987-03-24 ');
insert into CLIENTE values(N'Enzo',N'Cavalcanti',N'EnzoLimaCavalcanti@gustr.com',N'M','1957-02-26 ');
insert into CLIENTE values(N'Cau�',N'Sousa',N'CauaCastroSousa@supermail.com',N'M','1986-06-28 ');
insert into CLIENTE values(N'Bianca',N'Almeida',N'BiancaSantosAlmeida@rhyta.com',N'F','1983-06-15 ');
insert into CLIENTE values(N'Isabella',N'Silva',N'IsabellaOliveiraSilva@jourrapide.com',N'F','1964-04-10 ');
insert into CLIENTE values(N'Beatrice',N'Martins',N'BeatriceCavalcantiMartins@gustr.com',N'F','1972-01-21 ');
insert into CLIENTE values(N'Emilly',N'Carvalho',N'EmillyMartinsCarvalho@rhyta.com',N'F','1963-04-02 ');
insert into CLIENTE values(N'Matheus',N'Melo',N'MatheusSilvaMelo@teleworm.us',N'M','1991-09-21 ');
insert into CLIENTE values(N'�gatha',N'Martins',N'AgathaAzevedoMartins@cuvox.de',N'F','1985-03-01 ');
insert into CLIENTE values(N'Joao',N'Fernandes',N'JoaoBarrosFernandes@teleworm.us',N'M','1943-12-27 ');
insert into CLIENTE values(N'Luiz',N'Sousa',N'LuizMartinsSousa@einrot.com',N'M','1959-04-18 ');
insert into CLIENTE values(N'Joao',N'Almeida',N'JoaoLimaAlmeida@armyspy.com',N'M','1947-09-10 ');
insert into CLIENTE values(N'Luiz',N'Costa',N'LuizRibeiroCosta@teleworm.us',N'M','1992-12-30 ');
insert into CLIENTE values(N'Vin�cius',N'Cavalcanti',N'ViniciusBarrosCavalcanti@jourrapide.com',N'M','1979-02-20 ');
insert into CLIENTE values(N'Lu�s',N'Araujo',N'LuisCarvalhoAraujo@armyspy.com',N'M','1973-05-16 ');
insert into CLIENTE values(N'Breno',N'Oliveira',N'BrenoMeloOliveira@jourrapide.com',N'M','1964-09-08 ');
insert into CLIENTE values(N'Cau�',N'Melo',N'CauaCavalcantiMelo@fleckens.hu',N'M','1954-06-22 ');
insert into CLIENTE values(N'Paulo',N'Martins',N'PauloCorreiaMartins@superrito.com',N'M','1986-07-24 ');
insert into CLIENTE values(N'Vin�cius',N'Sousa',N'ViniciusLimaSousa@supermail.com',N'M','1975-12-25 ');
insert into CLIENTE values(N'Douglas',N'Rocha',N'DouglasCunhaRocha@einrot.com',N'M','1945-03-09 ');
insert into CLIENTE values(N'Julia',N'Goncalves',N'JuliaPintoGoncalves@armyspy.com',N'F','1976-12-09 ');
insert into CLIENTE values(N'Fernanda',N'Araujo',N'FernandaCunhaAraujo@superrito.com',N'F','1959-05-26 ');
insert into CLIENTE values(N'Vit�ria',N'Gomes',N'VitoriaLimaGomes@fleckens.hu',N'F','1950-08-13 ');
insert into CLIENTE values(N'Davi',N'Cavalcanti',N'DaviBarbosaCavalcanti@supermail.com',N'M','1969-05-04 ');
insert into CLIENTE values(N'Julian',N'Sousa',N'JulianCunhaSousa@cuvox.de',N'M','1979-09-21 ');
insert into CLIENTE values(N'Eduardo',N'Pereira',N'EduardoSantosPereira@gustr.com',N'M','1946-03-14 ');
insert into CLIENTE values(N'Aline',N'Pinto',N'AlineCardosoPinto@armyspy.com',N'F','1983-11-14 ');
insert into CLIENTE values(N'Kaua',N'Fernandes',N'KauaBarrosFernandes@teleworm.us',N'M','1970-06-06 ');
insert into CLIENTE values(N'Nicole',N'Oliveira',N'NicoleCostaOliveira@fleckens.hu',N'F','1969-07-11 ');
insert into CLIENTE values(N'Isabelle',N'Souza',N'IsabelleSantosSouza@gustr.com',N'F','1957-02-09 ');
insert into CLIENTE values(N'Beatrice',N'Pereira',N'BeatriceAlmeidaPereira@rhyta.com',N'F','1974-05-12 ');
insert into CLIENTE values(N'Nicolash',N'Cavalcanti',N'NicolashMartinsCavalcanti@cuvox.de',N'M','1945-11-27 ');
insert into CLIENTE values(N'J�lia',N'Fernandes',N'JuliaLimaFernandes@fleckens.hu',N'F','1994-10-03 ');
insert into CLIENTE values(N'Lucas',N'Rodrigues',N'LucasAzevedoRodrigues@cuvox.de',N'M','1956-12-03 ');
insert into CLIENTE values(N'Kaua',N'Santos',N'KauaGoncalvesSantos@jourrapide.com',N'M','1983-01-16 ');
insert into CLIENTE values(N'Arthur',N'Fernandes',N'ArthurRibeiroFernandes@gustr.com',N'M','1972-06-14 ');
insert into CLIENTE values(N'Sophia',N'Goncalves',N'SophiaBarrosGoncalves@superrito.com',N'F','1974-03-07 ');
insert into CLIENTE values(N'Rebeca',N'Araujo',N'RebecaCunhaAraujo@cuvox.de',N'F','1989-10-20 ');
insert into CLIENTE values(N'Kaua',N'Ribeiro',N'KauaAlvesRibeiro@fleckens.hu',N'M','1983-01-22 ');
insert into CLIENTE values(N'Leonardo',N'Pinto',N'LeonardoGomesPinto@supermail.com',N'M','1969-07-31 ');
insert into CLIENTE values(N'Fernanda',N'Gomes',N'FernandaSilvaGomes@cuvox.de',N'F','1986-08-11 ');
insert into CLIENTE values(N'�gatha',N'Sousa',N'AgathaDiasSousa@gustr.com',N'F','1945-05-06 ');
insert into CLIENTE values(N'Lucas',N'Souza',N'LucasPereiraSouza@superrito.com',N'M','1944-08-22 ');
insert into CLIENTE values(N'Fernanda',N'Pinto',N'FernandaSantosPinto@einrot.com',N'F','1965-09-05 ');
insert into CLIENTE values(N'Joao',N'Fernandes',N'JoaoCarvalhoFernandes@cuvox.de',N'M','1975-09-16 ');
insert into CLIENTE values(N'Ant�nio',N'Oliveira',N'AntonioPereiraOliveira@fleckens.hu',N'M','1960-08-16 ');
insert into CLIENTE values(N'Vinicius',N'Melo',N'ViniciusBarrosMelo@armyspy.com',N'M','1950-10-30 ');
insert into CLIENTE values(N'Pedro',N'Alves',N'PedroPereiraAlves@supermail.com',N'M','1948-10-10 ');
insert into CLIENTE values(N'Livia',N'Pereira',N'LiviaCastroPereira@fleckens.hu',N'F','1984-09-06 ');
insert into CLIENTE values(N'Samuel',N'Lima',N'SamuelSilvaLima@armyspy.com',N'M','1973-01-28 ');
insert into CLIENTE values(N'Jos�',N'Fernandes',N'JosePereiraFernandes@cuvox.de',N'M','1980-03-19 ');
insert into CLIENTE values(N'Guilherme',N'Fernandes',N'GuilhermeSousaFernandes@einrot.com',N'M','1979-03-04 ');
insert into CLIENTE values(N'Isabelle',N'Rocha',N'IsabelleSouzaRocha@teleworm.us',N'F','1993-06-22 ');
insert into CLIENTE values(N'Danilo',N'Pereira',N'DaniloCavalcantiPereira@jourrapide.com',N'M','1994-09-26 ');
insert into CLIENTE values(N'Enzo',N'Santos',N'EnzoPintoSantos@gustr.com',N'M','1979-05-13 ');
insert into CLIENTE values(N'Lu�s',N'Costa',N'LuisAzevedoCosta@rhyta.com',N'M','1984-10-04 ');
insert into CLIENTE values(N'Alex',N'Sousa',N'AlexRochaSousa@jourrapide.com',N'M','1963-03-09 ');
insert into CLIENTE values(N'Carlos',N'Rodrigues',N'CarlosCavalcantiRodrigues@einrot.com',N'M','1976-02-21 ');
insert into CLIENTE values(N'Vitor',N'Dias',N'VitorRodriguesDias@jourrapide.com',N'M','1974-03-24 ');
insert into CLIENTE values(N'Clara',N'Carvalho',N'ClaraCastroCarvalho@einrot.com',N'F','1965-10-01 ');
insert into CLIENTE values(N'Anna',N'Oliveira',N'AnnaAzevedoOliveira@cuvox.de',N'F','1979-10-11 ');
insert into CLIENTE values(N'Beatrice',N'Costa',N'BeatriceLimaCosta@rhyta.com',N'F','1975-09-20 ');
insert into CLIENTE values(N'Matilde',N'Cavalcanti',N'MatildeRibeiroCavalcanti@einrot.com',N'F','1965-01-06 ');
insert into CLIENTE values(N'Erick',N'Gomes',N'ErickMartinsGomes@armyspy.com',N'M','1971-03-18 ');
insert into CLIENTE values(N'Nicole',N'Correia',N'NicoleAzevedoCorreia@superrito.com',N'F','1951-12-22 ');
insert into CLIENTE values(N'Marina',N'Pereira',N'MarinaAzevedoPereira@supermail.com',N'F','1985-10-22 ');
insert into CLIENTE values(N'Daniel',N'Santos',N'DanielFerreiraSantos@supermail.com',N'M','1955-11-17 ');
insert into CLIENTE values(N'Eduardo',N'Barbosa',N'EduardoGomesBarbosa@gustr.com',N'M','1968-08-05 ');
insert into CLIENTE values(N'Kau�',N'Ribeiro',N'KaueRodriguesRibeiro@fleckens.hu',N'M','1955-09-21 ');
insert into CLIENTE values(N'Diego',N'Pinto',N'DiegoRodriguesPinto@cuvox.de',N'M','1982-04-19 ');
insert into CLIENTE values(N'Sofia',N'Azevedo',N'SofiaDiasAzevedo@cuvox.de',N'F','1969-05-21 ');
insert into CLIENTE values(N'Rafael',N'Barbosa',N'RafaelOliveiraBarbosa@supermail.com',N'M','1984-04-26 ');
insert into CLIENTE values(N'Douglas',N'Cavalcanti',N'DouglasBarrosCavalcanti@jourrapide.com',N'M','1950-11-03 ');
insert into CLIENTE values(N'Davi',N'Pinto',N'DaviAzevedoPinto@armyspy.com',N'M','1994-06-20 ');
insert into CLIENTE values(N'Eduardo',N'Barros',N'EduardoCardosoBarros@teleworm.us',N'M','1981-10-21 ');
insert into CLIENTE values(N'Evelyn',N'Fernandes',N'EvelynPereiraFernandes@cuvox.de',N'F','1957-12-18 ');
insert into CLIENTE values(N'Luan',N'Melo',N'LuanFerreiraMelo@gustr.com',N'M','1988-03-23 ');
insert into CLIENTE values(N'Alex',N'Araujo',N'AlexAlvesAraujo@einrot.com',N'M','1968-08-07 ');
insert into CLIENTE values(N'Melissa',N'Almeida',N'MelissaSantosAlmeida@jourrapide.com',N'F','1973-01-17 ');
insert into CLIENTE values(N'Arthur',N'Goncalves',N'ArthurAzevedoGoncalves@fleckens.hu',N'M','1978-06-10 ');
insert into CLIENTE values(N'Bruna',N'Rocha',N'BrunaCunhaRocha@teleworm.us',N'F','1943-05-13 ');
insert into CLIENTE values(N'Renan',N'Dias',N'RenanOliveiraDias@jourrapide.com',N'M','1951-09-18 ');
insert into CLIENTE values(N'Diogo',N'Pereira',N'DiogoDiasPereira@teleworm.us',N'M','1982-10-04 ');
insert into CLIENTE values(N'Tom�s',N'Melo',N'TomasMartinsMelo@armyspy.com',N'M','1951-02-17 ');
insert into CLIENTE values(N'Martim',N'Barbosa',N'MartimSousaBarbosa@teleworm.us',N'M','1963-10-16 ');
insert into CLIENTE values(N'Daniel',N'Cavalcanti',N'DanielAraujoCavalcanti@supermail.com',N'M','1960-04-01 ');
insert into CLIENTE values(N'Renan',N'Martins',N'RenanSantosMartins@einrot.com',N'M','1978-01-21 ');
insert into CLIENTE values(N'Gustavo',N'Barbosa',N'GustavoGoncalvesBarbosa@einrot.com',N'M','1966-04-21 ');
insert into CLIENTE values(N'Cau�',N'Fernandes',N'CauaBarbosaFernandes@jourrapide.com',N'M','1990-02-10 ');
insert into CLIENTE values(N'J�lio',N'Alves',N'JulioSilvaAlves@armyspy.com',N'M','1965-01-31 ');
insert into CLIENTE values(N'Diego',N'Correia',N'DiegoRibeiroCorreia@einrot.com',N'M','1986-10-06 ');
insert into CLIENTE values(N'J�lia',N'Santos',N'JuliaCostaSantos@jourrapide.com',N'F','1954-09-19 ');
insert into CLIENTE values(N'Manuela',N'Goncalves',N'ManuelaSouzaGoncalves@cuvox.de',N'F','1994-05-30 ');
insert into CLIENTE values(N'Vit�ria',N'Pereira',N'VitoriaSantosPereira@fleckens.hu',N'F','1980-03-25 ');
insert into CLIENTE values(N'Luana',N'Azevedo',N'LuanaSantosAzevedo@armyspy.com',N'F','1954-08-16 ');
insert into CLIENTE values(N'Brenda',N'Castro',N'BrendaCostaCastro@gustr.com',N'F','1975-04-20 ');
insert into CLIENTE values(N'Matilde',N'Rodrigues',N'MatildePintoRodrigues@superrito.com',N'F','1972-05-08 ');
insert into CLIENTE values(N'Miguel',N'Sousa',N'MiguelGoncalvesSousa@fleckens.hu',N'M','1992-12-13 ');
insert into CLIENTE values(N'Vinicius',N'Souza',N'ViniciusGomesSouza@armyspy.com',N'M','1980-11-13 ');
insert into CLIENTE values(N'Sophia',N'Cunha',N'SophiaDiasCunha@einrot.com',N'F','1986-08-05 ');
insert into CLIENTE values(N'Vinicius',N'Goncalves',N'ViniciusDiasGoncalves@fleckens.hu',N'M','1981-08-17 ');
insert into CLIENTE values(N'Ana',N'Costa',N'AnaCavalcantiCosta@fleckens.hu',N'F','1989-04-11 ');
insert into CLIENTE values(N'Kaua',N'Castro',N'KauaBarbosaCastro@teleworm.us',N'M','1992-05-04 ');
insert into CLIENTE values(N'Igor',N'Gomes',N'IgorSousaGomes@gustr.com',N'M','1991-09-10 ');
insert into CLIENTE values(N'Maria',N'Lima',N'MariaRibeiroLima@supermail.com',N'F','1953-06-08 ');
GO
insert into CLIENTE values(N'Carla',N'Dias',N'CarlaSouzaDias@cuvox.de',N'F','1976-01-20 ');
insert into CLIENTE values(N'Nicolash',N'Melo',N'NicolashBarbosaMelo@armyspy.com',N'M','1989-03-24 ');
insert into CLIENTE values(N'Luana',N'Oliveira',N'LuanaCavalcantiOliveira@cuvox.de',N'F','1946-05-23 ');
insert into CLIENTE values(N'Isabella',N'Santos',N'IsabellaSilvaSantos@teleworm.us',N'F','1971-05-22 ');
insert into CLIENTE values(N'Bruna',N'Melo',N'BrunaSantosMelo@rhyta.com',N'F','1959-03-26 ');
insert into CLIENTE values(N'Melissa',N'Almeida',N'MelissaPereiraAlmeida@rhyta.com',N'F','1977-12-23 ');
insert into CLIENTE values(N'Luiz',N'Ferreira',N'LuizDiasFerreira@supermail.com',N'M','1967-02-09 ');
insert into CLIENTE values(N'Rafaela',N'Silva',N'RafaelaBarbosaSilva@cuvox.de',N'F','1949-11-24 ');
insert into CLIENTE values(N'Daniel',N'Cardoso',N'DanielCorreiaCardoso@supermail.com',N'M','1962-09-13 ');
insert into CLIENTE values(N'Kau�',N'Lima',N'KauaGomesLima@fleckens.hu',N'M','1981-02-12 ');
insert into CLIENTE values(N'Kaua',N'Gomes',N'KauaPereiraGomes@einrot.com',N'M','1991-09-05 ');
insert into CLIENTE values(N'Eduardo',N'Santos',N'EduardoCorreiaSantos@cuvox.de',N'M','1972-08-08 ');
insert into CLIENTE values(N'Sarah',N'Ferreira',N'SarahCostaFerreira@jourrapide.com',N'F','1968-12-22 ');
insert into CLIENTE values(N'Kau�',N'Cunha',N'KauaCarvalhoCunha@gustr.com',N'M','1968-07-05 ');
insert into CLIENTE values(N'Bruno',N'Barros',N'BrunoSouzaBarros@supermail.com',N'M','1960-11-20 ');
insert into CLIENTE values(N'Rodrigo',N'Melo',N'RodrigoDiasMelo@einrot.com',N'M','1972-08-28 ');
insert into CLIENTE values(N'Kaua',N'Cardoso',N'KauaCunhaCardoso@armyspy.com',N'M','1989-03-20 ');
insert into CLIENTE values(N'Camila',N'Santos',N'CamilaCardosoSantos@teleworm.us',N'F','1943-05-05 ');
insert into CLIENTE values(N'Clara',N'Ferreira',N'ClaraAlvesFerreira@fleckens.hu',N'F','1985-03-18 ');
insert into CLIENTE values(N'Bruna',N'Barbosa',N'BrunaRodriguesBarbosa@gustr.com',N'F','1960-07-21 ');
insert into CLIENTE values(N'Isabella',N'Ribeiro',N'IsabellaCorreiaRibeiro@teleworm.us',N'F','1971-12-07 ');
insert into CLIENTE values(N'Emilly',N'Fernandes',N'EmillyAlmeidaFernandes@rhyta.com',N'F','1945-01-28 ');
insert into CLIENTE values(N'Bruna',N'Goncalves',N'BrunaLimaGoncalves@supermail.com',N'F','1966-04-09 ');
insert into CLIENTE values(N'Gabriel',N'Carvalho',N'GabrielAlmeidaCarvalho@rhyta.com',N'M','1968-05-20 ');
insert into CLIENTE values(N'Kai',N'Alves',N'KaiCardosoAlves@teleworm.us',N'M','1955-01-03 ');
insert into CLIENTE values(N'Mateus',N'Araujo',N'MateusFerreiraAraujo@rhyta.com',N'M','1960-02-08 ');
insert into CLIENTE values(N'Carolina',N'Cardoso',N'CarolinaBarrosCardoso@jourrapide.com',N'F','1973-03-02 ');
insert into CLIENTE values(N'Larissa',N'Pinto',N'LarissaSantosPinto@supermail.com',N'F','1975-08-16 ');
insert into CLIENTE values(N'Fernanda',N'Oliveira',N'FernandaCostaOliveira@rhyta.com',N'F','1952-02-20 ');
insert into CLIENTE values(N'Thiago',N'Alves',N'ThiagoMeloAlves@superrito.com',N'M','1949-01-18 ');
insert into CLIENTE values(N'Felipe',N'Goncalves',N'FelipeSouzaGoncalves@teleworm.us',N'M','1990-01-06 ');
insert into CLIENTE values(N'Kau�',N'Souza',N'KaueSantosSouza@teleworm.us',N'M','1966-10-01 ');
insert into CLIENTE values(N'Sarah',N'Alves',N'SarahGomesAlves@fleckens.hu',N'F','1967-11-15 ');
insert into CLIENTE values(N'Tha�s',N'Barbosa',N'ThaisCarvalhoBarbosa@superrito.com',N'F','1957-10-07 ');
insert into CLIENTE values(N'Samuel',N'Azevedo',N'SamuelLimaAzevedo@supermail.com',N'M','1944-10-08 ');
insert into CLIENTE values(N'Gustavo',N'Goncalves',N'GustavoBarbosaGoncalves@jourrapide.com',N'M','1967-08-21 ');
insert into CLIENTE values(N'Leonardo',N'Goncalves',N'LeonardoCardosoGoncalves@cuvox.de',N'M','1945-02-07 ');
insert into CLIENTE values(N'Marisa',N'Barbosa',N'MarisaSantosBarbosa@jourrapide.com',N'F','1949-04-12 ');
insert into CLIENTE values(N'Danilo',N'Martins',N'DaniloCunhaMartins@superrito.com',N'M','1955-09-01 ');
insert into CLIENTE values(N'Miguel',N'Correia',N'MiguelGoncalvesCorreia@supermail.com',N'M','1960-11-22 ');
insert into CLIENTE values(N'Tha�s',N'Almeida',N'ThaisCardosoAlmeida@fleckens.hu',N'F','1978-10-28 ');
insert into CLIENTE values(N'Lu�s',N'Ribeiro',N'LuisSantosRibeiro@fleckens.hu',N'M','1991-11-05 ');
insert into CLIENTE values(N'Martim',N'Cardoso',N'MartimAraujoCardoso@superrito.com',N'M','1980-07-26 ');
insert into CLIENTE values(N'Sofia',N'Oliveira',N'SofiaGomesOliveira@teleworm.us',N'F','1969-11-03 ');
insert into CLIENTE values(N'Nicolash',N'Goncalves',N'NicolashAraujoGoncalves@cuvox.de',N'M','1984-05-10 ');
insert into CLIENTE values(N'Caio',N'Ferreira',N'CaioCunhaFerreira@rhyta.com',N'M','1970-03-06 ');
insert into CLIENTE values(N'Enzo',N'Lima',N'EnzoAlvesLima@rhyta.com',N'M','1983-10-26 ');
insert into CLIENTE values(N'Luan',N'Santos',N'LuanRodriguesSantos@armyspy.com',N'M','1986-10-11 ');
insert into CLIENTE values(N'Lucas',N'Almeida',N'LucasAraujoAlmeida@rhyta.com',N'M','1975-09-17 ');
insert into CLIENTE values(N'Rafaela',N'Ferreira',N'RafaelaFernandesFerreira@fleckens.hu',N'F','1988-07-07 ');
insert into CLIENTE values(N'Sofia',N'Melo',N'SofiaPintoMelo@teleworm.us',N'F','1994-10-10 ');
insert into CLIENTE values(N'J�lio',N'Carvalho',N'JulioAraujoCarvalho@superrito.com',N'M','1964-09-18 ');
insert into CLIENTE values(N'Beatrice',N'Dias',N'BeatriceCardosoDias@teleworm.us',N'F','1957-06-18 ');
insert into CLIENTE values(N'F�bio',N'Pinto',N'FabioGomesPinto@cuvox.de',N'M','1990-12-28 ');
insert into CLIENTE values(N'Julia',N'Cavalcanti',N'JuliaOliveiraCavalcanti@jourrapide.com',N'F','1989-11-05 ');
insert into CLIENTE values(N'Bianca',N'Ribeiro',N'BiancaOliveiraRibeiro@armyspy.com',N'F','1992-02-12 ');
insert into CLIENTE values(N'Rafael',N'Rodrigues',N'RafaelMartinsRodrigues@fleckens.hu',N'M','1957-01-17 ');
insert into CLIENTE values(N'Maria',N'Silva',N'MariaMeloSilva@rhyta.com',N'F','1974-10-28 ');
insert into CLIENTE values(N'Renan',N'Rodrigues',N'RenanRochaRodrigues@armyspy.com',N'M','1957-03-21 ');
insert into CLIENTE values(N'Camila',N'Carvalho',N'CamilaBarbosaCarvalho@einrot.com',N'F','1986-04-11 ');
insert into CLIENTE values(N'Alice',N'Cardoso',N'AliceAlvesCardoso@gustr.com',N'F','1981-02-19 ');
insert into CLIENTE values(N'T�nia',N'Melo',N'TaniaMartinsMelo@supermail.com',N'F','1976-03-01 ');
insert into CLIENTE values(N'Beatriz',N'Carvalho',N'BeatrizGomesCarvalho@superrito.com',N'F','1993-03-18 ');
insert into CLIENTE values(N'Luis',N'Pinto',N'LuisSouzaPinto@rhyta.com',N'M','1970-12-06 ');
insert into CLIENTE values(N'Jos�',N'Araujo',N'JoseSousaAraujo@jourrapide.com',N'M','1951-06-08 ');
insert into CLIENTE values(N'Kau�',N'Cardoso',N'KauaSousaCardoso@superrito.com',N'M','1966-07-22 ');
insert into CLIENTE values(N'Diego',N'Barros',N'DiegoLimaBarros@einrot.com',N'M','1978-01-29 ');
insert into CLIENTE values(N'Gabriela',N'Rocha',N'GabrielaSilvaRocha@rhyta.com',N'F','1973-10-18 ');
insert into CLIENTE values(N'Larissa',N'Cavalcanti',N'LarissaSouzaCavalcanti@fleckens.hu',N'F','1990-12-25 ');
insert into CLIENTE values(N'Renan',N'Ribeiro',N'RenanMeloRibeiro@cuvox.de',N'M','1987-04-18 ');
insert into CLIENTE values(N'Enzo',N'Carvalho',N'EnzoAzevedoCarvalho@jourrapide.com',N'M','1973-12-22 ');
insert into CLIENTE values(N'Diogo',N'Martins',N'DiogoCarvalhoMartins@einrot.com',N'M','1973-04-05 ');
insert into CLIENTE values(N'Sofia',N'Azevedo',N'SofiaRibeiroAzevedo@superrito.com',N'F','1988-11-26 ');
insert into CLIENTE values(N'Alice',N'Goncalves',N'AliceCardosoGoncalves@superrito.com',N'F','1952-12-17 ');
insert into CLIENTE values(N'Miguel',N'Pinto',N'MiguelCastroPinto@gustr.com',N'M','1948-04-09 ');
insert into CLIENTE values(N'Evelyn',N'Ribeiro',N'EvelynBarrosRibeiro@rhyta.com',N'F','1976-07-25 ');
insert into CLIENTE values(N'Beatrice',N'Almeida',N'BeatricePereiraAlmeida@cuvox.de',N'F','1980-03-18 ');
insert into CLIENTE values(N'Maria',N'Sousa',N'MariaCorreiaSousa@superrito.com',N'F','1957-06-19 ');
insert into CLIENTE values(N'Thiago',N'Goncalves',N'ThiagoRochaGoncalves@einrot.com',N'M','1954-07-10 ');
insert into CLIENTE values(N'F�bio',N'Correia',N'FabioRodriguesCorreia@teleworm.us',N'M','1974-12-16 ');
insert into CLIENTE values(N'Giovanna',N'Azevedo',N'GiovannaCostaAzevedo@teleworm.us',N'F','1946-08-18 ');
insert into CLIENTE values(N'Renan',N'Rocha',N'RenanCastroRocha@einrot.com',N'M','1994-12-30 ');
insert into CLIENTE values(N'Raissa',N'Almeida',N'RaissaRochaAlmeida@rhyta.com',N'F','1973-07-17 ');
insert into CLIENTE values(N'Marisa',N'Gomes',N'MarisaCunhaGomes@gustr.com',N'F','1986-06-19 ');
insert into CLIENTE values(N'Marcos',N'Cavalcanti',N'MarcosAraujoCavalcanti@superrito.com',N'M','1984-02-12 ');
insert into CLIENTE values(N'Let�cia',N'Correia',N'LeticiaBarrosCorreia@supermail.com',N'F','1973-01-17 ');
insert into CLIENTE values(N'Cau�',N'Pereira',N'CauaCorreiaPereira@cuvox.de',N'M','1991-03-28 ');
insert into CLIENTE values(N'Arthur',N'Lima',N'ArthurCostaLima@supermail.com',N'M','1969-01-07 ');
insert into CLIENTE values(N'Emily',N'Lima',N'EmilyCardosoLima@einrot.com',N'F','1961-03-19 ');
insert into CLIENTE values(N'Matheus',N'Ferreira',N'MatheusBarrosFerreira@fleckens.hu',N'M','1947-02-18 ');
insert into CLIENTE values(N'Luiz',N'Martins',N'LuizPintoMartins@gustr.com',N'M','1962-07-14 ');
insert into CLIENTE values(N'Vin�cius',N'Silva',N'ViniciusOliveiraSilva@einrot.com',N'M','1957-05-17 ');
insert into CLIENTE values(N'Igor',N'Castro',N'IgorBarbosaCastro@fleckens.hu',N'M','1989-05-20 ');
insert into CLIENTE values(N'Nicolash',N'Ferreira',N'NicolashSilvaFerreira@teleworm.us',N'M','1946-02-14 ');
insert into CLIENTE values(N'Mateus',N'Cardoso',N'MateusFernandesCardoso@teleworm.us',N'M','1954-06-27 ');
insert into CLIENTE values(N'Sofia',N'Cavalcanti',N'SofiaMartinsCavalcanti@superrito.com',N'F','1981-09-28 ');
insert into CLIENTE values(N'Tiago',N'Barros',N'TiagoOliveiraBarros@supermail.com',N'M','1972-10-10 ');
insert into CLIENTE values(N'Camila',N'Ribeiro',N'CamilaCastroRibeiro@superrito.com',N'F','1946-08-30 ');
insert into CLIENTE values(N'Cau�',N'Fernandes',N'CauaAlvesFernandes@einrot.com',N'M','1958-05-26 ');
insert into CLIENTE values(N'J�lio',N'Melo',N'JulioFernandesMelo@teleworm.us',N'M','1966-10-08 ');
insert into CLIENTE values(N'Ryan',N'Cardoso',N'RyanDiasCardoso@supermail.com',N'M','1975-03-18 ');
insert into CLIENTE values(N'Bianca',N'Rocha',N'BiancaOliveiraRocha@supermail.com',N'F','1982-08-14 ');
insert into CLIENTE values(N'Beatriz',N'Castro',N'BeatrizAzevedoCastro@jourrapide.com',N'F','1956-04-20 ');
insert into CLIENTE values(N'Bianca',N'Cunha',N'BiancaAraujoCunha@fleckens.hu',N'F','1965-02-15 ');
insert into CLIENTE values(N'Jo�o',N'Silva',N'JoaoRodriguesSilva@fleckens.hu',N'M','1950-03-03 ');
insert into CLIENTE values(N'Sofia',N'Castro',N'SofiaPereiraCastro@gustr.com',N'F','1947-12-04 ');
insert into CLIENTE values(N'Guilherme',N'Almeida',N'GuilhermeCastroAlmeida@cuvox.de',N'M','1950-09-29 ');
insert into CLIENTE values(N'Rafael',N'Melo',N'RafaelCastroMelo@fleckens.hu',N'M','1961-05-03 ');
insert into CLIENTE values(N'Kaua',N'Costa',N'KauaMartinsCosta@supermail.com',N'M','1987-05-29 ');
insert into CLIENTE values(N'Tiago',N'Melo',N'TiagoRodriguesMelo@superrito.com',N'M','1958-09-11 ');
insert into CLIENTE values(N'Pedro',N'Rocha',N'PedroFerreiraRocha@superrito.com',N'M','1967-09-17 ');
insert into CLIENTE values(N'Gabriel',N'Fernandes',N'GabrielSousaFernandes@teleworm.us',N'M','1962-10-16 ');
insert into CLIENTE values(N'Luiza',N'Dias',N'LuizaCorreiaDias@teleworm.us',N'F','1982-03-20 ');
insert into CLIENTE values(N'Martim',N'Barros',N'MartimSouzaBarros@cuvox.de',N'M','1946-09-16 ');
insert into CLIENTE values(N'Renan',N'Sousa',N'RenanRibeiroSousa@jourrapide.com',N'M','1949-06-16 ');
insert into CLIENTE values(N'Ant�nio',N'Melo',N'AntonioAzevedoMelo@fleckens.hu',N'M','1991-07-03 ');
insert into CLIENTE values(N'Raissa',N'Pinto',N'RaissaCardosoPinto@jourrapide.com',N'F','1991-02-07 ');
insert into CLIENTE values(N'Victor',N'Dias',N'VictorBarbosaDias@armyspy.com',N'M','1983-06-01 ');
insert into CLIENTE values(N'Leonor',N'Cunha',N'LeonorSilvaCunha@cuvox.de',N'F','1975-06-10 ');
insert into CLIENTE values(N'Ryan',N'Oliveira',N'RyanCostaOliveira@superrito.com',N'M','1976-12-27 ');
insert into CLIENTE values(N'Luiz',N'Souza',N'LuizRochaSouza@fleckens.hu',N'M','1967-05-02 ');
insert into CLIENTE values(N'Arthur',N'Pinto',N'ArthurCavalcantiPinto@teleworm.us',N'M','1960-01-03 ');
insert into CLIENTE values(N'Igor',N'Silva',N'IgorOliveiraSilva@teleworm.us',N'M','1970-08-23 ');
insert into CLIENTE values(N'Estevan',N'Ribeiro',N'EstevanRochaRibeiro@cuvox.de',N'M','1964-07-06 ');
insert into CLIENTE values(N'Nicolash',N'Silva',N'NicolashPereiraSilva@gustr.com',N'M','1989-07-30 ');
insert into CLIENTE values(N'Pedro',N'Costa',N'PedroMartinsCosta@einrot.com',N'M','1971-12-25 ');
insert into CLIENTE values(N'Diego',N'Araujo',N'DiegoDiasAraujo@supermail.com',N'M','1958-09-20 ');
insert into CLIENTE values(N'Rodrigo',N'Ferreira',N'RodrigoPereiraFerreira@fleckens.hu',N'M','1943-12-16 ');
insert into CLIENTE values(N'Lu�s',N'Santos',N'LuisMeloSantos@fleckens.hu',N'M','1969-11-10 ');
insert into CLIENTE values(N'Nicolas',N'Correia',N'NicolasGomesCorreia@supermail.com',N'M','1946-09-04 ');
insert into CLIENTE values(N'Pedro',N'Melo',N'PedroPintoMelo@rhyta.com',N'M','1953-08-20 ');
insert into CLIENTE values(N'Luiz',N'Santos',N'LuizCavalcantiSantos@superrito.com',N'M','1986-08-04 ');
insert into CLIENTE values(N'Gustavo',N'Cardoso',N'GustavoBarbosaCardoso@gustr.com',N'M','1960-07-02 ');
insert into CLIENTE values(N'Carlos',N'Pereira',N'CarlosCastroPereira@fleckens.hu',N'M','1964-12-04 ');
insert into CLIENTE values(N'Amanda',N'Ferreira',N'AmandaCastroFerreira@armyspy.com',N'F','1945-01-12 ');
insert into CLIENTE values(N'Beatriz',N'Cavalcanti',N'BeatrizAlvesCavalcanti@armyspy.com',N'F','1947-03-01 ');
insert into CLIENTE values(N'Marcos',N'Souza',N'MarcosOliveiraSouza@jourrapide.com',N'M','1977-09-06 ');
insert into CLIENTE values(N'Julia',N'Fernandes',N'JuliaDiasFernandes@fleckens.hu',N'F','1944-06-11 ');
insert into CLIENTE values(N'Julia',N'Almeida',N'JuliaCunhaAlmeida@gustr.com',N'F','1973-04-16 ');
insert into CLIENTE values(N'�gatha',N'Almeida',N'AgathaCastroAlmeida@cuvox.de',N'F','1979-12-09 ');
insert into CLIENTE values(N'Daniel',N'Barros',N'DanielGoncalvesBarros@superrito.com',N'M','1978-07-15 ');
insert into CLIENTE values(N'T�nia',N'Costa',N'TaniaMeloCosta@teleworm.us',N'F','1982-12-30 ');
insert into CLIENTE values(N'Livia',N'Santos',N'LiviaLimaSantos@gustr.com',N'F','1973-10-24 ');
insert into CLIENTE values(N'Luiz',N'Fernandes',N'LuizBarrosFernandes@superrito.com',N'M','1990-12-01 ');
insert into CLIENTE values(N'Diego',N'Carvalho',N'DiegoSilvaCarvalho@teleworm.us',N'M','1960-02-05 ');
insert into CLIENTE values(N'Lu�s',N'Silva',N'LuisAlmeidaSilva@rhyta.com',N'M','1963-01-02 ');
insert into CLIENTE values(N'Arthur',N'Castro',N'ArthurPereiraCastro@armyspy.com',N'M','1967-05-31 ');
insert into CLIENTE values(N'Vit�ria',N'Rocha',N'VitoriaSilvaRocha@armyspy.com',N'F','1981-06-18 ');
insert into CLIENTE values(N'Isabelle',N'Santos',N'IsabelleAraujoSantos@cuvox.de',N'F','1946-08-05 ');
insert into CLIENTE values(N'Yasmin',N'Ferreira',N'YasminMartinsFerreira@cuvox.de',N'F','1991-01-22 ');
insert into CLIENTE values(N'Luiz',N'Costa',N'LuizMeloCosta@armyspy.com',N'M','1986-06-02 ');
insert into CLIENTE values(N'Luiz',N'Dias',N'LuizMeloDias@cuvox.de',N'M','1955-10-02 ');
insert into CLIENTE values(N'Aline',N'Pinto',N'AlineCarvalhoPinto@armyspy.com',N'F','1949-05-29 ');
insert into CLIENTE values(N'Murilo',N'Souza',N'MuriloCavalcantiSouza@supermail.com',N'M','1963-07-16 ');
insert into CLIENTE values(N'Leonardo',N'Martins',N'LeonardoSilvaMartins@armyspy.com',N'M','1951-04-19 ');
insert into CLIENTE values(N'Emilly',N'Costa',N'EmillyCardosoCosta@cuvox.de',N'F','1964-07-05 ');
insert into CLIENTE values(N'Felipe',N'Silva',N'FelipeMeloSilva@fleckens.hu',N'M','1956-05-21 ');
insert into CLIENTE values(N'Gabriel',N'Gomes',N'GabrielDiasGomes@supermail.com',N'M','1961-09-25 ');
insert into CLIENTE values(N'Leila',N'Azevedo',N'LeilaMeloAzevedo@gustr.com',N'F','1969-07-13 ');
insert into CLIENTE values(N'Ant�nio',N'Cardoso',N'AntonioCarvalhoCardoso@rhyta.com',N'M','1993-08-02 ');
insert into CLIENTE values(N'Bianca',N'Azevedo',N'BiancaGomesAzevedo@jourrapide.com',N'F','1974-04-04 ');
insert into CLIENTE values(N'Gabriel',N'Castro',N'GabrielAzevedoCastro@gustr.com',N'M','1987-02-11 ');
insert into CLIENTE values(N'Nicolas',N'Castro',N'NicolasCavalcantiCastro@supermail.com',N'M','1967-07-31 ');
insert into CLIENTE values(N'Paulo',N'Dias',N'PauloAlmeidaDias@superrito.com',N'M','1957-09-22 ');
insert into CLIENTE values(N'Evelyn',N'Souza',N'EvelynPintoSouza@armyspy.com',N'F','1961-06-08 ');
insert into CLIENTE values(N'Paulo',N'Castro',N'PauloAraujoCastro@armyspy.com',N'M','1993-03-09 ');
insert into CLIENTE values(N'Victor',N'Rodrigues',N'VictorSousaRodrigues@einrot.com',N'M','1962-05-24 ');
insert into CLIENTE values(N'Ryan',N'Melo',N'RyanRochaMelo@einrot.com',N'M','1989-12-21 ');
insert into CLIENTE values(N'Marcos',N'Fernandes',N'MarcosBarbosaFernandes@fleckens.hu',N'M','1961-10-09 ');
insert into CLIENTE values(N'Ant�nio',N'Melo',N'AntonioAlvesMelo@cuvox.de',N'M','1949-09-19 ');
insert into CLIENTE values(N'Arthur',N'Dias',N'ArthurGoncalvesDias@rhyta.com',N'M','1984-01-06 ');
insert into CLIENTE values(N'Alex',N'Souza',N'AlexLimaSouza@cuvox.de',N'M','1943-08-06 ');
insert into CLIENTE values(N'Emily',N'Cardoso',N'EmilyMartinsCardoso@jourrapide.com',N'F','1978-08-21 ');
insert into CLIENTE values(N'Murilo',N'Carvalho',N'MuriloCastroCarvalho@einrot.com',N'M','1974-04-19 ');
insert into CLIENTE values(N'Kau�',N'Cardoso',N'KauaCorreiaCardoso@einrot.com',N'M','1945-11-19 ');
insert into CLIENTE values(N'Kau�',N'Castro',N'KauaSantosCastro@jourrapide.com',N'M','1960-12-17 ');
insert into CLIENTE values(N'Carla',N'Pereira',N'CarlaSousaPereira@einrot.com',N'F','1987-03-10 ');
insert into CLIENTE values(N'Bianca',N'Almeida',N'BiancaCostaAlmeida@superrito.com',N'F','1994-12-02 ');
insert into CLIENTE values(N'Enzo',N'Oliveira',N'EnzoSousaOliveira@superrito.com',N'M','1948-06-19 ');
insert into CLIENTE values(N'Tiago',N'Correia',N'TiagoBarbosaCorreia@cuvox.de',N'M','1990-10-18 ');
insert into CLIENTE values(N'Matilde',N'Alves',N'MatildeMartinsAlves@cuvox.de',N'F','1983-07-16 ');
insert into CLIENTE values(N'Kau�',N'Fernandes',N'KaueSilvaFernandes@gustr.com',N'M','1994-05-27 ');
insert into CLIENTE values(N'Raissa',N'Dias',N'RaissaSilvaDias@supermail.com',N'F','1986-09-11 ');
insert into CLIENTE values(N'Isabella',N'Ferreira',N'IsabellaAlmeidaFerreira@rhyta.com',N'F','1987-12-04 ');
insert into CLIENTE values(N'Giovana',N'Sousa',N'GiovanaMartinsSousa@gustr.com',N'F','1943-07-29 ');
insert into CLIENTE values(N'Kau�',N'Fernandes',N'KauaMartinsFernandes@gustr.com',N'M','1984-07-24 ');
insert into CLIENTE values(N'Lu�s',N'Correia',N'LuisRibeiroCorreia@jourrapide.com',N'M','1961-12-13 ');
insert into CLIENTE values(N'Tiago',N'Ferreira',N'TiagoCarvalhoFerreira@fleckens.hu',N'M','1980-01-18 ');
insert into CLIENTE values(N'J�lio',N'Lima',N'JulioAlvesLima@gustr.com',N'M','1974-04-14 ');
insert into CLIENTE values(N'Murilo',N'Cavalcanti',N'MuriloCostaCavalcanti@rhyta.com',N'M','1970-07-12 ');
insert into CLIENTE values(N'Caio',N'Gomes',N'CaioRodriguesGomes@einrot.com',N'M','1972-10-07 ');
insert into CLIENTE values(N'Kauan',N'Alves',N'KauanBarbosaAlves@einrot.com',N'M','1984-09-17 ');
insert into CLIENTE values(N'Gustavo',N'Goncalves',N'GustavoDiasGoncalves@superrito.com',N'M','1955-01-31 ');
insert into CLIENTE values(N'Amanda',N'Lima',N'AmandaGomesLima@armyspy.com',N'F','1990-03-20 ');
insert into CLIENTE values(N'Julia',N'Pereira',N'JuliaCardosoPereira@teleworm.us',N'F','1961-05-18 ');
insert into CLIENTE values(N'Victor',N'Souza',N'VictorCastroSouza@armyspy.com',N'M','1957-02-06 ');
insert into CLIENTE values(N'Rodrigo',N'Costa',N'RodrigoOliveiraCosta@cuvox.de',N'M','1967-09-28 ');
insert into CLIENTE values(N'Aline',N'Correia',N'AlineCunhaCorreia@fleckens.hu',N'F','1984-02-13 ');
insert into CLIENTE values(N'J�lio',N'Ferreira',N'JulioRibeiroFerreira@fleckens.hu',N'M','1993-02-06 ');
insert into CLIENTE values(N'Mariana',N'Almeida',N'MarianaGoncalvesAlmeida@gustr.com',N'F','1977-02-10 ');
insert into CLIENTE values(N'Victor',N'Sousa',N'VictorMeloSousa@supermail.com',N'M','1966-09-18 ');
insert into CLIENTE values(N'Luana',N'Sousa',N'LuanaCavalcantiSousa@superrito.com',N'F','1979-06-25 ');
insert into CLIENTE values(N'Kau�',N'Carvalho',N'KauaSouzaCarvalho@superrito.com',N'M','1957-09-04 ');
insert into CLIENTE values(N'Camila',N'Rodrigues',N'CamilaPereiraRodrigues@einrot.com',N'F','1984-01-14 ');
insert into CLIENTE values(N'Ryan',N'Ferreira',N'RyanGomesFerreira@supermail.com',N'M','1951-04-07 ');
insert into CLIENTE values(N'Andr�',N'Martins',N'AndreMeloMartins@teleworm.us',N'M','1964-06-20 ');
insert into CLIENTE values(N'Kaua',N'Dias',N'KauaLimaDias@fleckens.hu',N'M','1958-01-30 ');
insert into CLIENTE values(N'Samuel',N'Castro',N'SamuelDiasCastro@jourrapide.com',N'M','1952-12-21 ');
insert into CLIENTE values(N'Igor',N'Martins',N'IgorRochaMartins@fleckens.hu',N'M','1959-07-22 ');
insert into CLIENTE values(N'Paulo',N'Carvalho',N'PauloSilvaCarvalho@fleckens.hu',N'M','1975-05-31 ');
insert into CLIENTE values(N'Laura',N'Costa',N'LauraCavalcantiCosta@supermail.com',N'F','1967-12-21 ');
insert into CLIENTE values(N'Leonardo',N'Gomes',N'LeonardoRodriguesGomes@supermail.com',N'M','1953-11-19 ');
insert into CLIENTE values(N'Vin�cius',N'Martins',N'ViniciusCorreiaMartins@armyspy.com',N'M','1974-12-17 ');
insert into CLIENTE values(N'Fernanda',N'Cunha',N'FernandaBarbosaCunha@superrito.com',N'F','1963-12-23 ');
insert into CLIENTE values(N'Vitor',N'Carvalho',N'VitorSouzaCarvalho@supermail.com',N'M','1969-10-02 ');
insert into CLIENTE values(N'Gabrielle',N'Almeida',N'GabrielleSilvaAlmeida@jourrapide.com',N'F','1970-08-29 ');
insert into CLIENTE values(N'Alex',N'Ribeiro',N'AlexBarrosRibeiro@armyspy.com',N'M','1948-08-09 ');
insert into CLIENTE values(N'Diego',N'Rocha',N'DiegoAlmeidaRocha@armyspy.com',N'M','1993-10-11 ');
insert into CLIENTE values(N'Andr�',N'Sousa',N'AndrePintoSousa@armyspy.com',N'M','1948-12-15 ');
insert into CLIENTE values(N'Matheus',N'Silva',N'MatheusCastroSilva@gustr.com',N'M','1967-04-05 ');
insert into CLIENTE values(N'Gabriel',N'Rodrigues',N'GabrielSousaRodrigues@jourrapide.com',N'M','1954-09-07 ');
insert into CLIENTE values(N'Amanda',N'Ferreira',N'AmandaCardosoFerreira@jourrapide.com',N'F','1961-10-23 ');
insert into CLIENTE values(N'Carlos',N'Martins',N'CarlosLimaMartins@gustr.com',N'M','1968-03-27 ');
insert into CLIENTE values(N'Martim',N'Almeida',N'MartimCardosoAlmeida@supermail.com',N'M','1952-07-04 ');
insert into CLIENTE values(N'Eduarda',N'Oliveira',N'EduardaMartinsOliveira@einrot.com',N'F','1962-02-07 ');
insert into CLIENTE values(N'Paulo',N'Dias',N'PauloCavalcantiDias@einrot.com',N'M','1977-01-07 ');
insert into CLIENTE values(N'Bruno',N'Melo',N'BrunoCastroMelo@supermail.com',N'M','1985-12-24 ');
insert into CLIENTE values(N'Kaua',N'Rocha',N'KauaPintoRocha@supermail.com',N'M','1995-04-26 ');
insert into CLIENTE values(N'Renan',N'Oliveira',N'RenanSilvaOliveira@fleckens.hu',N'M','1946-02-02 ');
insert into CLIENTE values(N'Kai',N'Rodrigues',N'KaiRochaRodrigues@fleckens.hu',N'M','1979-07-31 ');
insert into CLIENTE values(N'Aline',N'Fernandes',N'AlineBarbosaFernandes@gustr.com',N'F','1985-05-09 ');
insert into CLIENTE values(N'Bruna',N'Cavalcanti',N'BrunaDiasCavalcanti@einrot.com',N'F','1986-01-07 ');
insert into CLIENTE values(N'Davi',N'Cavalcanti',N'DaviMartinsCavalcanti@rhyta.com',N'M','1951-09-21 ');
insert into CLIENTE values(N'Vitoria',N'Barbosa',N'VitoriaCastroBarbosa@superrito.com',N'F','1961-07-11 ');
insert into CLIENTE values(N'Laura',N'Cavalcanti',N'LauraGomesCavalcanti@einrot.com',N'F','1994-07-24 ');
insert into CLIENTE values(N'Brenda',N'Alves',N'BrendaSantosAlves@superrito.com',N'F','1978-08-21 ');
insert into CLIENTE values(N'Emilly',N'Castro',N'EmillyCunhaCastro@cuvox.de',N'F','1963-08-02 ');
insert into CLIENTE values(N'Leonardo',N'Oliveira',N'LeonardoMeloOliveira@fleckens.hu',N'M','1993-04-03 ');
insert into CLIENTE values(N'Douglas',N'Lima',N'DouglasGomesLima@teleworm.us',N'M','1976-08-27 ');
insert into CLIENTE values(N'Beatrice',N'Alves',N'BeatriceFernandesAlves@superrito.com',N'F','1985-07-12 ');
insert into CLIENTE values(N'F�bio',N'Fernandes',N'FabioCunhaFernandes@einrot.com',N'M','1986-06-06 ');
insert into CLIENTE values(N'Mateus',N'Pereira',N'MateusBarrosPereira@einrot.com',N'M','1993-03-26 ');
insert into CLIENTE values(N'Vin�cius',N'Barbosa',N'ViniciusCavalcantiBarbosa@jourrapide.com',N'M','1978-01-30 ');
insert into CLIENTE values(N'Sophia',N'Martins',N'SophiaDiasMartins@cuvox.de',N'F','1950-08-31 ');
insert into CLIENTE values(N'Nicolas',N'Alves',N'NicolasBarrosAlves@teleworm.us',N'M','1956-03-03 ');
insert into CLIENTE values(N'Luiza',N'Alves',N'LuizaLimaAlves@rhyta.com',N'F','1955-07-08 ');
insert into CLIENTE values(N'Kauan',N'Sousa',N'KauanAzevedoSousa@fleckens.hu',N'M','1974-12-16 ');
insert into CLIENTE values(N'Alice',N'Ribeiro',N'AliceRochaRibeiro@supermail.com',N'F','1971-04-28 ');
insert into CLIENTE values(N'Caio',N'Dias',N'CaioFernandesDias@gustr.com',N'M','1972-08-21 ');
insert into CLIENTE values(N'Miguel',N'Almeida',N'MiguelAraujoAlmeida@supermail.com',N'M','1954-06-18 ');
insert into CLIENTE values(N'Felipe',N'Pereira',N'FelipeCostaPereira@cuvox.de',N'M','1968-05-31 ');
insert into CLIENTE values(N'Samuel',N'Dias',N'SamuelSousaDias@gustr.com',N'M','1968-09-27 ');
insert into CLIENTE values(N'Alice',N'Melo',N'AliceBarbosaMelo@armyspy.com',N'F','1980-11-03 ');
insert into CLIENTE values(N'Cau�',N'Ribeiro',N'CauaCunhaRibeiro@gustr.com',N'M','1963-06-02 ');
insert into CLIENTE values(N'Isabela',N'Azevedo',N'IsabelaMeloAzevedo@supermail.com',N'F','1966-04-28 ');
insert into CLIENTE values(N'Gustavo',N'Goncalves',N'GustavoCorreiaGoncalves@jourrapide.com',N'M','1970-09-08 ');
insert into CLIENTE values(N'Rafael',N'Oliveira',N'RafaelFernandesOliveira@cuvox.de',N'M','1971-01-18 ');
insert into CLIENTE values(N'F�bio',N'Pereira',N'FabioDiasPereira@armyspy.com',N'M','1964-12-20 ');
insert into CLIENTE values(N'Rebeca',N'Dias',N'RebecaOliveiraDias@teleworm.us',N'F','1972-11-18 ');
insert into CLIENTE values(N'Andr�',N'Alves',N'AndreSilvaAlves@supermail.com',N'M','1965-10-27 ');
insert into CLIENTE values(N'Anna',N'Castro',N'AnnaRochaCastro@teleworm.us',N'F','1993-01-06 ');
insert into CLIENTE values(N'Thiago',N'Silva',N'ThiagoAzevedoSilva@cuvox.de',N'M','1949-11-06 ');
insert into CLIENTE values(N'Igor',N'Ribeiro',N'IgorMartinsRibeiro@einrot.com',N'M','1992-03-15 ');
insert into CLIENTE values(N'Bruna',N'Barros',N'BrunaBarbosaBarros@armyspy.com',N'F','1959-04-07 ');
insert into CLIENTE values(N'Luiz',N'Dias',N'LuizMartinsDias@rhyta.com',N'M','1989-10-16 ');
insert into CLIENTE values(N'Vit�r',N'Rocha',N'VitorLimaRocha@superrito.com',N'M','1952-12-16 ');
insert into CLIENTE values(N'Vit�r',N'Martins',N'VitorGomesMartins@cuvox.de',N'M','1988-08-17 ');
insert into CLIENTE values(N'J�lio',N'Melo',N'JulioSilvaMelo@einrot.com',N'M','1956-05-20 ');
insert into CLIENTE values(N'J�lio',N'Pereira',N'JulioSouzaPereira@supermail.com',N'M','1944-12-07 ');
insert into CLIENTE values(N'Julian',N'Gomes',N'JulianCarvalhoGomes@cuvox.de',N'M','1950-03-23 ');
insert into CLIENTE values(N'Julian',N'Azevedo',N'JulianSousaAzevedo@gustr.com',N'M','1986-09-06 ');
insert into CLIENTE values(N'Breno',N'Ribeiro',N'BrenoPintoRibeiro@cuvox.de',N'M','1987-02-24 ');
insert into CLIENTE values(N'Beatrice',N'Cavalcanti',N'BeatricePereiraCavalcanti@rhyta.com',N'F','1974-07-04 ');
insert into CLIENTE values(N'Rodrigo',N'Sousa',N'RodrigoMartinsSousa@teleworm.us',N'M','1957-07-10 ');
insert into CLIENTE values(N'Emily',N'Goncalves',N'EmilyCastroGoncalves@supermail.com',N'F','1952-02-19 ');
insert into CLIENTE values(N'Douglas',N'Pinto',N'DouglasBarrosPinto@fleckens.hu',N'M','1955-06-13 ');
insert into CLIENTE values(N'Miguel',N'Ribeiro',N'MiguelFernandesRibeiro@rhyta.com',N'M','1977-07-18 ');
insert into CLIENTE values(N'Melissa',N'Silva',N'MelissaFerreiraSilva@jourrapide.com',N'F','1955-08-28 ');
insert into CLIENTE values(N'Beatrice',N'Sousa',N'BeatriceCardosoSousa@einrot.com',N'F','1982-08-12 ');
insert into CLIENTE values(N'Emily',N'Ferreira',N'EmilySousaFerreira@fleckens.hu',N'F','1974-01-12 ');
insert into CLIENTE values(N'Breno',N'Gomes',N'BrenoMeloGomes@armyspy.com',N'M','1958-01-21 ');
insert into CLIENTE values(N'Samuel',N'Pinto',N'SamuelDiasPinto@cuvox.de',N'M','1954-07-14 ');
insert into CLIENTE values(N'Brenda',N'Dias',N'BrendaFernandesDias@armyspy.com',N'F','1993-03-23 ');
insert into CLIENTE values(N'Luiza',N'Rocha',N'LuizaMeloRocha@jourrapide.com',N'F','1978-08-09 ');
insert into CLIENTE values(N'Vit�ria',N'Gomes',N'VitoriaRibeiroGomes@gustr.com',N'F','1991-02-18 ');
insert into CLIENTE values(N'Nicole',N'Almeida',N'NicoleCastroAlmeida@supermail.com',N'F','1959-03-18 ');
insert into CLIENTE values(N'Paulo',N'Goncalves',N'PauloSilvaGoncalves@armyspy.com',N'M','1958-09-22 ');
insert into CLIENTE values(N'Marina',N'Oliveira',N'MarinaCorreiaOliveira@superrito.com',N'F','1981-04-13 ');
insert into CLIENTE values(N'Pedro',N'Ferreira',N'PedroPereiraFerreira@fleckens.hu',N'M','1952-10-18 ');
insert into CLIENTE values(N'Alex',N'Souza',N'AlexAlmeidaSouza@superrito.com',N'M','1953-03-07 ');
insert into CLIENTE values(N'Lara',N'Silva',N'LaraMartinsSilva@rhyta.com',N'F','1966-10-27 ');
insert into CLIENTE values(N'Tiago',N'Santos',N'TiagoMeloSantos@teleworm.us',N'M','1944-10-03 ');
insert into CLIENTE values(N'Martim',N'Correia',N'MartimMeloCorreia@rhyta.com',N'M','1987-05-26 ');
insert into CLIENTE values(N'Leila',N'Silva',N'LeilaCarvalhoSilva@superrito.com',N'F','1971-05-08 ');
insert into CLIENTE values(N'Bruno',N'Sousa',N'BrunoPintoSousa@armyspy.com',N'M','1951-07-30 ');
insert into CLIENTE values(N'T�nia',N'Pinto',N'TaniaRochaPinto@einrot.com',N'F','1991-12-12 ');
insert into CLIENTE values(N'Leonardo',N'Souza',N'LeonardoDiasSouza@cuvox.de',N'M','1980-04-20 ');
insert into CLIENTE values(N'Luis',N'Ribeiro',N'LuisSilvaRibeiro@einrot.com',N'M','1953-01-03 ');
insert into CLIENTE values(N'Isabelle',N'Castro',N'IsabelleCardosoCastro@cuvox.de',N'F','1972-11-06 ');
insert into CLIENTE values(N'Nicolash',N'Cunha',N'NicolashSouzaCunha@fleckens.hu',N'M','1965-06-05 ');
insert into CLIENTE values(N'Kau�',N'Ferreira',N'KauaSousaFerreira@teleworm.us',N'M','1994-07-09 ');
insert into CLIENTE values(N'J�lia',N'Sousa',N'JuliaFernandesSousa@supermail.com',N'F','1958-08-23 ');
insert into CLIENTE values(N'Vitor',N'Santos',N'VitorPereiraSantos@teleworm.us',N'M','1949-03-02 ');
insert into CLIENTE values(N'Lu�s',N'Souza',N'LuisMartinsSouza@armyspy.com',N'M','1990-03-05 ');
insert into CLIENTE values(N'Jos�',N'Almeida',N'JoseRochaAlmeida@einrot.com',N'M','1977-04-19 ');
insert into CLIENTE values(N'Victor',N'Santos',N'VictorAlvesSantos@gustr.com',N'M','1992-12-22 ');
insert into CLIENTE values(N'Leila',N'Goncalves',N'LeilaCorreiaGoncalves@jourrapide.com',N'F','1969-05-20 ');
insert into CLIENTE values(N'Emilly',N'Rodrigues',N'EmillyCostaRodrigues@einrot.com',N'F','1971-11-01 ');
insert into CLIENTE values(N'Cau�',N'Carvalho',N'CauaMartinsCarvalho@jourrapide.com',N'M','1989-02-19 ');
insert into CLIENTE values(N'Vitoria',N'Araujo',N'VitoriaCardosoAraujo@cuvox.de',N'F','1962-08-06 ');
insert into CLIENTE values(N'Marisa',N'Melo',N'MarisaAraujoMelo@supermail.com',N'F','1960-01-20 ');
insert into CLIENTE values(N'Thiago',N'Rodrigues',N'ThiagoAlmeidaRodrigues@rhyta.com',N'M','1967-10-30 ');
insert into CLIENTE values(N'Julian',N'Rodrigues',N'JulianMartinsRodrigues@supermail.com',N'M','1982-05-24 ');
insert into CLIENTE values(N'Tiago',N'Barros',N'TiagoAraujoBarros@jourrapide.com',N'M','1987-03-07 ');
insert into CLIENTE values(N'Andr�',N'Rocha',N'AndreSantosRocha@cuvox.de',N'M','1951-08-08 ');
insert into CLIENTE values(N'Tom�s',N'Fernandes',N'TomasCastroFernandes@fleckens.hu',N'M','1965-05-11 ');
insert into CLIENTE values(N'Nicolash',N'Ribeiro',N'NicolashAzevedoRibeiro@supermail.com',N'M','1962-05-31 ');
insert into CLIENTE values(N'Kau�',N'Lima',N'KauaFerreiraLima@gustr.com',N'M','1953-07-23 ');
insert into CLIENTE values(N'Marina',N'Goncalves',N'MarinaRochaGoncalves@teleworm.us',N'F','1954-03-29 ');
insert into CLIENTE values(N'Vitor',N'Azevedo',N'VitorFernandesAzevedo@einrot.com',N'M','1946-07-11 ');
insert into CLIENTE values(N'Nicolas',N'Oliveira',N'NicolasLimaOliveira@einrot.com',N'M','1992-04-30 ');
insert into CLIENTE values(N'F�bio',N'Cavalcanti',N'FabioSilvaCavalcanti@gustr.com',N'M','1965-05-27 ');
insert into CLIENTE values(N'Danilo',N'Araujo',N'DaniloFerreiraAraujo@superrito.com',N'M','1968-11-16 ');
insert into CLIENTE values(N'Danilo',N'Pinto',N'DaniloRochaPinto@cuvox.de',N'M','1979-04-30 ');
insert into CLIENTE values(N'Alice',N'Araujo',N'AliceCardosoAraujo@superrito.com',N'F','1969-02-25 ');
insert into CLIENTE values(N'Carolina',N'Ribeiro',N'CarolinaMartinsRibeiro@fleckens.hu',N'F','1971-04-24 ');
insert into CLIENTE values(N'Rafaela',N'Azevedo',N'RafaelaBarrosAzevedo@fleckens.hu',N'F','1970-09-13 ');
insert into CLIENTE values(N'Julian',N'Azevedo',N'JulianCostaAzevedo@armyspy.com',N'M','1980-06-11 ');
insert into CLIENTE values(N'Larissa',N'Melo',N'LarissaDiasMelo@jourrapide.com',N'F','1975-07-06 ');
insert into CLIENTE values(N'Leila',N'Carvalho',N'LeilaCostaCarvalho@jourrapide.com',N'F','1946-07-22 ');
insert into CLIENTE values(N'Lu�s',N'Barros',N'LuisSilvaBarros@armyspy.com',N'M','1952-03-03 ');
insert into CLIENTE values(N'T�nia',N'Pinto',N'TaniaPereiraPinto@superrito.com',N'F','1990-03-29 ');
insert into CLIENTE values(N'J�lia',N'Pinto',N'JuliaCorreiaPinto@gustr.com',N'F','1964-06-01 ');
insert into CLIENTE values(N'Alice',N'Santos',N'AliceMartinsSantos@armyspy.com',N'F','1984-04-08 ');
insert into CLIENTE values(N'Alex',N'Sousa',N'AlexCastroSousa@jourrapide.com',N'M','1950-12-13 ');
insert into CLIENTE values(N'Leonardo',N'Barbosa',N'LeonardoCorreiaBarbosa@fleckens.hu',N'M','1989-09-30 ');
insert into CLIENTE values(N'Vinicius',N'Rocha',N'ViniciusSouzaRocha@cuvox.de',N'M','1959-08-01 ');
insert into CLIENTE values(N'Giovana',N'Cardoso',N'GiovanaBarbosaCardoso@gustr.com',N'F','1975-06-26 ');
insert into CLIENTE values(N'Gabrielle',N'Fernandes',N'GabrielleAlvesFernandes@rhyta.com',N'F','1951-07-24 ');
insert into CLIENTE values(N'Isabela',N'Souza',N'IsabelaCavalcantiSouza@armyspy.com',N'F','1943-05-28 ');
insert into CLIENTE values(N'Gabriela',N'Rodrigues',N'GabrielaPintoRodrigues@armyspy.com',N'F','1977-11-08 ');
insert into CLIENTE values(N'Danilo',N'Souza',N'DaniloSantosSouza@cuvox.de',N'M','1956-03-25 ');
insert into CLIENTE values(N'Rodrigo',N'Barbosa',N'RodrigoAlvesBarbosa@rhyta.com',N'M','1994-01-24 ');
insert into CLIENTE values(N'Lu�s',N'Ribeiro',N'LuisBarbosaRibeiro@fleckens.hu',N'M','1970-02-02 ');
insert into CLIENTE values(N'Samuel',N'Gomes',N'SamuelMartinsGomes@superrito.com',N'M','1943-12-27 ');
insert into CLIENTE values(N'Luan',N'Oliveira',N'LuanRochaOliveira@superrito.com',N'M','1943-05-10 ');
insert into CLIENTE values(N'Kai',N'Correia',N'KaiCostaCorreia@superrito.com',N'M','1966-08-25 ');
insert into CLIENTE values(N'Eduardo',N'Rodrigues',N'EduardoBarrosRodrigues@jourrapide.com',N'M','1970-03-01 ');
insert into CLIENTE values(N'Rafael',N'Silva',N'RafaelRodriguesSilva@armyspy.com',N'M','1946-06-18 ');
insert into CLIENTE values(N'Igor',N'Fernandes',N'IgorRodriguesFernandes@cuvox.de',N'M','1983-05-29 ');
insert into CLIENTE values(N'Kau�',N'Silva',N'KaueCarvalhoSilva@teleworm.us',N'M','1959-10-20 ');
insert into CLIENTE values(N'Arthur',N'Costa',N'ArthurGoncalvesCosta@supermail.com',N'M','1981-12-12 ');
insert into CLIENTE values(N'Miguel',N'Silva',N'MiguelCastroSilva@jourrapide.com',N'M','1953-04-26 ');
insert into CLIENTE values(N'Eduarda',N'Barros',N'EduardaCorreiaBarros@einrot.com',N'F','1984-05-27 ');
insert into CLIENTE values(N'Ot�vio',N'Pereira',N'OtavioCunhaPereira@jourrapide.com',N'M','1992-01-30 ');
insert into CLIENTE values(N'Vin�cius',N'Souza',N'ViniciusCavalcantiSouza@supermail.com',N'M','1961-09-18 ');
insert into CLIENTE values(N'Luana',N'Goncalves',N'LuanaRochaGoncalves@armyspy.com',N'F','1965-08-28 ');
insert into CLIENTE values(N'Jo�o',N'Silva',N'JoaoRibeiroSilva@supermail.com',N'M','1973-11-11 ');
insert into CLIENTE values(N'Lucas',N'Martins',N'LucasAlmeidaMartins@einrot.com',N'M','1977-02-17 ');
insert into CLIENTE values(N'Samuel',N'Barbosa',N'SamuelAlmeidaBarbosa@supermail.com',N'M','1963-02-08 ');
insert into CLIENTE values(N'Luan',N'Ribeiro',N'LuanSilvaRibeiro@superrito.com',N'M','1987-09-26 ');
insert into CLIENTE values(N'Alice',N'Azevedo',N'AliceBarbosaAzevedo@jourrapide.com',N'F','1953-12-16 ');
insert into CLIENTE values(N'Ana',N'Carvalho',N'AnaCorreiaCarvalho@supermail.com',N'F','1945-12-06 ');
insert into CLIENTE values(N'Julian',N'Castro',N'JulianCostaCastro@armyspy.com',N'M','1976-12-08 ');
insert into CLIENTE values(N'Tom�s',N'Goncalves',N'TomasCastroGoncalves@jourrapide.com',N'M','1945-11-30 ');
insert into CLIENTE values(N'Murilo',N'Oliveira',N'MuriloRodriguesOliveira@cuvox.de',N'M','1946-02-20 ');
insert into CLIENTE values(N'Luis',N'Araujo',N'LuisCavalcantiAraujo@supermail.com',N'M','1980-08-11 ');
insert into CLIENTE values(N'Cau�',N'Pereira',N'CauaCunhaPereira@einrot.com',N'M','1981-05-31 ');
insert into CLIENTE values(N'Matheus',N'Barros',N'MatheusRodriguesBarros@rhyta.com',N'M','1952-03-25 ');
insert into CLIENTE values(N'Miguel',N'Barros',N'MiguelPereiraBarros@cuvox.de',N'M','1989-08-08 ');
insert into CLIENTE values(N'Ryan',N'Cunha',N'RyanGomesCunha@gustr.com',N'M','1986-09-08 ');
insert into CLIENTE values(N'Erick',N'Rodrigues',N'ErickCorreiaRodrigues@gustr.com',N'M','1979-09-16 ');
insert into CLIENTE values(N'Guilherme',N'Lima',N'GuilhermeCostaLima@supermail.com',N'M','1951-09-28 ');
insert into CLIENTE values(N'Rafael',N'Fernandes',N'RafaelSousaFernandes@gustr.com',N'M','1990-11-02 ');
insert into CLIENTE values(N'Kau�',N'Carvalho',N'KaueSousaCarvalho@jourrapide.com',N'M','1980-10-12 ');
insert into CLIENTE values(N'Leila',N'Barbosa',N'LeilaCostaBarbosa@rhyta.com',N'F','1966-01-12 ');
insert into CLIENTE values(N'Beatriz',N'Fernandes',N'BeatrizSilvaFernandes@einrot.com',N'F','1952-12-26 ');
insert into CLIENTE values(N'Julian',N'Correia',N'JulianMartinsCorreia@armyspy.com',N'M','1974-10-20 ');
insert into CLIENTE values(N'Andr�',N'Alves',N'AndreRibeiroAlves@teleworm.us',N'M','1992-06-19 ');
insert into CLIENTE values(N'Pedro',N'Pinto',N'PedroLimaPinto@gustr.com',N'M','1980-05-28 ');
insert into CLIENTE values(N'Marcos',N'Pinto',N'MarcosGoncalvesPinto@armyspy.com',N'M','1976-05-02 ');
insert into CLIENTE values(N'Luiza',N'Oliveira',N'LuizaPintoOliveira@rhyta.com',N'F','1963-04-30 ');
insert into CLIENTE values(N'Vitoria',N'Goncalves',N'VitoriaOliveiraGoncalves@supermail.com',N'F','1944-09-25 ');
insert into CLIENTE values(N'Bruno',N'Correia',N'BrunoCunhaCorreia@cuvox.de',N'M','1945-01-20 ');
insert into CLIENTE values(N'Rafaela',N'Oliveira',N'RafaelaCostaOliveira@fleckens.hu',N'F','1972-06-24 ');
insert into CLIENTE values(N'Sofia',N'Fernandes',N'SofiaGoncalvesFernandes@jourrapide.com',N'F','1949-06-16 ');
insert into CLIENTE values(N'Laura',N'Cavalcanti',N'LauraSantosCavalcanti@fleckens.hu',N'F','1949-06-21 ');
insert into CLIENTE values(N'Renan',N'Costa',N'RenanAlmeidaCosta@rhyta.com',N'M','1963-12-02 ');
insert into CLIENTE values(N'Erick',N'Costa',N'ErickRodriguesCosta@jourrapide.com',N'M','1987-08-09 ');
insert into CLIENTE values(N'Isabella',N'Almeida',N'IsabellaAraujoAlmeida@cuvox.de',N'F','1969-03-14 ');
insert into CLIENTE values(N'Ot�vio',N'Goncalves',N'OtavioCardosoGoncalves@superrito.com',N'M','1985-05-03 ');
insert into CLIENTE values(N'Livia',N'Almeida',N'LiviaBarrosAlmeida@einrot.com',N'F','1990-05-05 ');
insert into CLIENTE values(N'Daniel',N'Carvalho',N'DanielFerreiraCarvalho@cuvox.de',N'M','1954-04-02 ');
insert into CLIENTE values(N'Diego',N'Souza',N'DiegoPintoSouza@fleckens.hu',N'M','1954-11-15 ');
insert into CLIENTE values(N'F�bio',N'Ferreira',N'FabioSousaFerreira@superrito.com',N'M','1986-09-14 ');
insert into CLIENTE values(N'Thiago',N'Costa',N'ThiagoSousaCosta@cuvox.de',N'M','1960-01-01 ');
insert into CLIENTE values(N'Luis',N'Araujo',N'LuisSousaAraujo@jourrapide.com',N'M','1965-02-07 ');
insert into CLIENTE values(N'Kauan',N'Costa',N'KauanBarrosCosta@superrito.com',N'M','1990-09-15 ');
insert into CLIENTE values(N'Giovanna',N'Rocha',N'GiovannaCastroRocha@gustr.com',N'F','1976-07-30 ');
insert into CLIENTE values(N'Eduardo',N'Fernandes',N'EduardoRibeiroFernandes@teleworm.us',N'M','1992-02-20 ');
insert into CLIENTE values(N'Carolina',N'Goncalves',N'CarolinaSousaGoncalves@cuvox.de',N'F','1954-09-09 ');
insert into CLIENTE values(N'Rebeca',N'Santos',N'RebecaSouzaSantos@rhyta.com',N'F','1948-04-03 ');
insert into CLIENTE values(N'Carlos',N'Pinto',N'CarlosSilvaPinto@jourrapide.com',N'M','1951-09-14 ');
insert into CLIENTE values(N'J�lia',N'Goncalves',N'JuliaCastroGoncalves@supermail.com',N'F','1951-11-21 ');
insert into CLIENTE values(N'Jos�',N'Santos',N'JoseLimaSantos@teleworm.us',N'M','1990-02-23 ');
insert into CLIENTE values(N'Vit�ria',N'Dias',N'VitoriaFernandesDias@supermail.com',N'F','1984-01-28 ');
insert into CLIENTE values(N'Tom�s',N'Almeida',N'TomasSousaAlmeida@superrito.com',N'M','1958-10-20 ');
insert into CLIENTE values(N'Let�cia',N'Souza',N'LeticiaOliveiraSouza@einrot.com',N'F','1979-07-26 ');
insert into CLIENTE values(N'Vit�r',N'Cardoso',N'VitorRibeiroCardoso@armyspy.com',N'M','1987-11-12 ');
insert into CLIENTE values(N'Matheus',N'Rodrigues',N'MatheusDiasRodrigues@cuvox.de',N'M','1951-06-30 ');
insert into CLIENTE values(N'Lu�s',N'Cardoso',N'LuisLimaCardoso@rhyta.com',N'M','1986-10-15 ');
insert into CLIENTE values(N'Daniel',N'Cardoso',N'DanielCastroCardoso@teleworm.us',N'M','1994-04-16 ');
insert into CLIENTE values(N'Lara',N'Goncalves',N'LaraCastroGoncalves@einrot.com',N'F','1963-09-07 ');
insert into CLIENTE values(N'Ryan',N'Souza',N'RyanSilvaSouza@superrito.com',N'M','1982-10-15 ');
insert into CLIENTE values(N'Martim',N'Barbosa',N'MartimCorreiaBarbosa@armyspy.com',N'M','1968-05-22 ');
insert into CLIENTE values(N'Clara',N'Cunha',N'ClaraBarrosCunha@teleworm.us',N'F','1990-09-03 ');
insert into CLIENTE values(N'Kau�',N'Santos',N'KaueOliveiraSantos@teleworm.us',N'M','1953-07-01 ');
insert into CLIENTE values(N'Vit�r',N'Ferreira',N'VitorPintoFerreira@einrot.com',N'M','1983-05-31 ');
insert into CLIENTE values(N'Breno',N'Correia',N'BrenoCostaCorreia@einrot.com',N'M','1979-04-02 ');
insert into CLIENTE values(N'Martim',N'Pereira',N'MartimOliveiraPereira@supermail.com',N'M','1961-11-02 ');
insert into CLIENTE values(N'Ana',N'Fernandes',N'AnaCastroFernandes@cuvox.de',N'F','1952-08-30 ');
insert into CLIENTE values(N'Beatrice',N'Araujo',N'BeatriceFernandesAraujo@gustr.com',N'F','1987-12-14 ');
insert into CLIENTE values(N'Luiza',N'Barros',N'LuizaPintoBarros@jourrapide.com',N'F','1975-11-28 ');
insert into CLIENTE values(N'Luan',N'Rocha',N'LuanRibeiroRocha@gustr.com',N'M','1991-03-16 ');
insert into CLIENTE values(N'Kai',N'Ribeiro',N'KaiOliveiraRibeiro@cuvox.de',N'M','1992-01-18 ');
insert into CLIENTE values(N'Eduardo',N'Rodrigues',N'EduardoSouzaRodrigues@jourrapide.com',N'M','1949-01-17 ');
insert into CLIENTE values(N'Joao',N'Barros',N'JoaoSilvaBarros@einrot.com',N'M','1986-11-21 ');
insert into CLIENTE values(N'Luiz',N'Almeida',N'LuizCardosoAlmeida@einrot.com',N'M','1956-09-06 ');
insert into CLIENTE values(N'Vit�ria',N'Azevedo',N'VitoriaSilvaAzevedo@gustr.com',N'F','1992-09-09 ');
insert into CLIENTE values(N'Cau�',N'Fernandes',N'CauaAzevedoFernandes@einrot.com',N'M','1975-05-13 ');
insert into CLIENTE values(N'Leonardo',N'Sousa',N'LeonardoFerreiraSousa@gustr.com',N'M','1962-03-07 ');
insert into CLIENTE values(N'Vinicius',N'Fernandes',N'ViniciusAzevedoFernandes@teleworm.us',N'M','1970-05-10 ');
insert into CLIENTE values(N'Estevan',N'Martins',N'EstevanCostaMartins@jourrapide.com',N'M','1966-01-28 ');
insert into CLIENTE values(N'Isabelle',N'Souza',N'IsabelleRibeiroSouza@jourrapide.com',N'F','1990-01-10 ');
insert into CLIENTE values(N'Breno',N'Goncalves',N'BrenoRibeiroGoncalves@jourrapide.com',N'M','1949-08-23 ');
insert into CLIENTE values(N'Marisa',N'Correia',N'MarisaCostaCorreia@superrito.com',N'F','1984-11-05 ');
insert into CLIENTE values(N'Rodrigo',N'Barros',N'RodrigoGomesBarros@fleckens.hu',N'M','1949-11-21 ');
insert into CLIENTE values(N'Mateus',N'Fernandes',N'MateusMeloFernandes@supermail.com',N'M','1982-01-26 ');
insert into CLIENTE values(N'Estevan',N'Araujo',N'EstevanBarbosaAraujo@gustr.com',N'M','1950-09-28 ');
insert into CLIENTE values(N'Luiz',N'Sousa',N'LuizDiasSousa@einrot.com',N'M','1992-08-16 ');
insert into CLIENTE values(N'Eduardo',N'Carvalho',N'EduardoAlmeidaCarvalho@superrito.com',N'M','1990-01-13 ');
insert into CLIENTE values(N'Luan',N'Araujo',N'LuanFernandesAraujo@armyspy.com',N'M','1975-09-03 ');
insert into CLIENTE values(N'Evelyn',N'Barros',N'EvelynSousaBarros@superrito.com',N'F','1943-05-23 ');
insert into CLIENTE values(N'Arthur',N'Santos',N'ArthurRibeiroSantos@fleckens.hu',N'M','1980-01-03 ');
insert into CLIENTE values(N'Nicolas',N'Barros',N'NicolasMeloBarros@fleckens.hu',N'M','1988-12-06 ');
insert into CLIENTE values(N'Rodrigo',N'Castro',N'RodrigoAzevedoCastro@rhyta.com',N'M','1953-03-02 ');
insert into CLIENTE values(N'Kaua',N'Rodrigues',N'KauaLimaRodrigues@jourrapide.com',N'M','1990-03-01 ');
insert into CLIENTE values(N'Pedro',N'Barros',N'PedroSousaBarros@superrito.com',N'M','1952-07-12 ');
insert into CLIENTE values(N'Kau�',N'Almeida',N'KauaAraujoAlmeida@supermail.com',N'M','1960-04-11 ');
insert into CLIENTE values(N'Kauan',N'Barbosa',N'KauanMartinsBarbosa@superrito.com',N'M','1959-10-24 ');
insert into CLIENTE values(N'Lu�s',N'Pinto',N'LuisSantosPinto@armyspy.com',N'M','1947-12-07 ');
insert into CLIENTE values(N'Marisa',N'Oliveira',N'MarisaFerreiraOliveira@fleckens.hu',N'F','1960-12-22 ');
insert into CLIENTE values(N'Bruna',N'Ribeiro',N'BrunaFernandesRibeiro@jourrapide.com',N'F','1947-09-05 ');
insert into CLIENTE values(N'Enzo',N'Alves',N'EnzoLimaAlves@fleckens.hu',N'M','1989-07-30 ');
insert into CLIENTE values(N'Nicolash',N'Cavalcanti',N'NicolashAlmeidaCavalcanti@rhyta.com',N'M','1962-05-23 ');
insert into CLIENTE values(N'Raissa',N'Sousa',N'RaissaRochaSousa@einrot.com',N'F','1953-10-15 ');
insert into CLIENTE values(N'Diogo',N'Cardoso',N'DiogoRibeiroCardoso@rhyta.com',N'M','1966-02-06 ');
insert into CLIENTE values(N'Kau�',N'Fernandes',N'KauaAraujoFernandes@rhyta.com',N'M','1955-07-01 ');
insert into CLIENTE values(N'Leonor',N'Alves',N'LeonorCostaAlves@rhyta.com',N'F','1974-09-19 ');
insert into CLIENTE values(N'Ana',N'Almeida',N'AnaLimaAlmeida@armyspy.com',N'F','1952-09-20 ');
insert into CLIENTE values(N'J�lia',N'Araujo',N'JuliaSouzaAraujo@fleckens.hu',N'F','1978-05-24 ');
insert into CLIENTE values(N'Daniel',N'Correia',N'DanielRochaCorreia@armyspy.com',N'M','1985-02-02 ');
insert into CLIENTE values(N'Nicole',N'Goncalves',N'NicoleCostaGoncalves@gustr.com',N'F','1950-10-26 ');
insert into CLIENTE values(N'Felipe',N'Martins',N'FelipeCostaMartins@cuvox.de',N'M','1975-02-06 ');
insert into CLIENTE values(N'Rebeca',N'Ferreira',N'RebecaRibeiroFerreira@teleworm.us',N'F','1956-03-18 ');
insert into CLIENTE values(N'Danilo',N'Castro',N'DaniloDiasCastro@cuvox.de',N'M','1970-04-27 ');
insert into CLIENTE values(N'Kaua',N'Sousa',N'KauaFerreiraSousa@teleworm.us',N'M','1993-04-23 ');
insert into CLIENTE values(N'Amanda',N'Almeida',N'AmandaBarbosaAlmeida@rhyta.com',N'F','1994-03-20 ');
insert into CLIENTE values(N'Tha�s',N'Oliveira',N'ThaisDiasOliveira@cuvox.de',N'F','1981-08-14 ');
insert into CLIENTE values(N'Larissa',N'Rodrigues',N'LarissaPereiraRodrigues@cuvox.de',N'F','1990-05-16 ');
insert into CLIENTE values(N'Alex',N'Alves',N'AlexSantosAlves@supermail.com',N'M','1959-10-01 ');
insert into CLIENTE values(N'Sarah',N'Alves',N'SarahPereiraAlves@supermail.com',N'F','1964-11-26 ');
insert into CLIENTE values(N'Victor',N'Barbosa',N'VictorFerreiraBarbosa@jourrapide.com',N'M','1986-09-07 ');
insert into CLIENTE values(N'Ana',N'Alves',N'AnaMartinsAlves@cuvox.de',N'F','1953-06-18 ');
insert into CLIENTE values(N'Guilherme',N'Ribeiro',N'GuilhermePereiraRibeiro@cuvox.de',N'M','1964-06-05 ');
insert into CLIENTE values(N'Maria',N'Almeida',N'MariaSilvaAlmeida@gustr.com',N'F','1951-02-06 ');
insert into CLIENTE values(N'Tom�s',N'Cavalcanti',N'TomasOliveiraCavalcanti@jourrapide.com',N'M','1968-10-12 ');
insert into CLIENTE values(N'Nicole',N'Alves',N'NicoleCostaAlves@superrito.com',N'F','1981-03-15 ');
insert into CLIENTE values(N'Nicolash',N'Ferreira',N'NicolashRochaFerreira@supermail.com',N'M','1986-08-03 ');
insert into CLIENTE values(N'Vitoria',N'Melo',N'VitoriaCardosoMelo@supermail.com',N'F','1962-03-06 ');
insert into CLIENTE values(N'Tom�s',N'Carvalho',N'TomasSantosCarvalho@teleworm.us',N'M','1961-03-03 ');
insert into CLIENTE values(N'Rodrigo',N'Costa',N'RodrigoGomesCosta@supermail.com',N'M','1990-10-30 ');
insert into CLIENTE values(N'Nicolas',N'Melo',N'NicolasCavalcantiMelo@rhyta.com',N'M','1990-08-06 ');
insert into CLIENTE values(N'Carlos',N'Cunha',N'CarlosAlvesCunha@armyspy.com',N'M','1966-12-02 ');
insert into CLIENTE values(N'Samuel',N'Araujo',N'SamuelBarrosAraujo@jourrapide.com',N'M','1950-11-26 ');
insert into CLIENTE values(N'Manuela',N'Carvalho',N'ManuelaFernandesCarvalho@superrito.com',N'F','1974-06-12 ');
insert into CLIENTE values(N'Let�cia',N'Barbosa',N'LeticiaCastroBarbosa@einrot.com',N'F','1951-03-05 ');
insert into CLIENTE values(N'�gatha',N'Correia',N'AgathaPintoCorreia@superrito.com',N'F','1968-12-28 ');
insert into CLIENTE values(N'Kau�',N'Fernandes',N'KauaCunhaFernandes@rhyta.com',N'M','1987-10-09 ');
insert into CLIENTE values(N'Estevan',N'Fernandes',N'EstevanAzevedoFernandes@rhyta.com',N'M','1964-03-23 ');
insert into CLIENTE values(N'Lucas',N'Correia',N'LucasCostaCorreia@teleworm.us',N'M','1989-05-22 ');
insert into CLIENTE values(N'Kaua',N'Fernandes',N'KauaSousaFernandes@armyspy.com',N'M','1979-06-20 ');
insert into CLIENTE values(N'Amanda',N'Santos',N'AmandaBarrosSantos@superrito.com',N'F','1947-02-13 ');
insert into CLIENTE values(N'Guilherme',N'Martins',N'GuilhermeBarrosMartins@fleckens.hu',N'M','1955-07-03 ');
insert into CLIENTE values(N'Rodrigo',N'Cardoso',N'RodrigoAzevedoCardoso@gustr.com',N'M','1970-02-21 ');
insert into CLIENTE values(N'Sophia',N'Sousa',N'SophiaRochaSousa@cuvox.de',N'F','1988-09-15 ');
insert into CLIENTE values(N'Vit�r',N'Ferreira',N'VitorFernandesFerreira@armyspy.com',N'M','1991-10-19 ');
insert into CLIENTE values(N'Joao',N'Barbosa',N'JoaoGomesBarbosa@rhyta.com',N'M','1952-07-10 ');
insert into CLIENTE values(N'Ant�nio',N'Correia',N'AntonioRochaCorreia@cuvox.de',N'M','1983-10-04 ');
insert into CLIENTE values(N'Cau�',N'Araujo',N'CauaOliveiraAraujo@einrot.com',N'M','1958-05-09 ');
GO

-- INSER��O CATEGORIA
INSERT INTO CATEGORIA VALUES('LIVROS')
INSERT INTO CATEGORIA VALUES('DVDS')
INSERT INTO CATEGORIA VALUES('GAMES')
INSERT INTO CATEGORIA VALUES('CELULARES')
INSERT INTO CATEGORIA VALUES('INFORMATICA')
INSERT INTO CATEGORIA VALUES('TV E AUDIO')
INSERT INTO CATEGORIA VALUES('ELETRODOMESTICOS')
INSERT INTO CATEGORIA VALUES('MOVEIS')
INSERT INTO CATEGORIA VALUES('PASSAGENS')
go;

select * from categoria
go

-- INSER��O FORNECEDOR
INSERT INTO FORNECEDOR VALUES('EDITORA LELIVROS')
INSERT INTO FORNECEDOR VALUES('EDITORA MUNDO FANTASIA')
INSERT INTO FORNECEDOR VALUES('EDITORA AMAZONIA')
INSERT INTO FORNECEDOR VALUES('STUDIOS HB')
INSERT INTO FORNECEDOR VALUES('STUDIOS HOLLYWOOD')
INSERT INTO FORNECEDOR VALUES('STUDIOS CALIFORNIA')
INSERT INTO FORNECEDOR VALUES('EM SPORTS')
INSERT INTO FORNECEDOR VALUES('BILLZAR GAMES')
INSERT INTO FORNECEDOR VALUES('BRAZUCA JOGOS')
INSERT INTO FORNECEDOR VALUES('JOGAR GAMES')
INSERT INTO FORNECEDOR VALUES('MOTOROLA') --
INSERT INTO FORNECEDOR VALUES('NOKIA') --
INSERT INTO FORNECEDOR VALUES('SAMSUNG') --
INSERT INTO FORNECEDOR VALUES('LG') --
INSERT INTO FORNECEDOR VALUES('DREAMC') --
INSERT INTO FORNECEDOR VALUES('GFORCE') --
INSERT INTO FORNECEDOR VALUES('APPLE') --
INSERT INTO FORNECEDOR VALUES('SONY') --
INSERT INTO FORNECEDOR VALUES('WALLITA') --
INSERT INTO FORNECEDOR VALUES('ARNO') --
INSERT INTO FORNECEDOR VALUES('MULTILASER') --
INSERT INTO FORNECEDOR VALUES('MICROSOFT') --
INSERT INTO FORNECEDOR VALUES('ACER') --
INSERT INTO FORNECEDOR VALUES('VISION') --
INSERT INTO FORNECEDOR VALUES('PHILIPS')
INSERT INTO FORNECEDOR VALUES('SANDISK') --
INSERT INTO FORNECEDOR VALUES('BRASTEMP') --
INSERT INTO FORNECEDOR VALUES('GANCA') --
INSERT INTO FORNECEDOR VALUES('BRITANIA') --
INSERT INTO FORNECEDOR VALUES('MOVEIS VAREJ�O')
INSERT INTO FORNECEDOR VALUES('BRASIL MADEIRAS')
INSERT INTO FORNECEDOR VALUES('LINHAS A�REAS BRAZUCA')
INSERT INTO FORNECEDOR VALUES('LINHAS BRASIL EXPRESS')
INSERT INTO FORNECEDOR VALUES('LINHAS LATINAS DE AVI�ES')
INSERT INTO FORNECEDOR VALUES('LINHAS INTERNACIONAIS EURO')
INSERT INTO FORNECEDOR VALUES('AMERICA LINES EXPRESS')
INSERT INTO FORNECEDOR VALUES('LENOVO')
INSERT INTO FORNECEDOR VALUES('CCE')
INSERT INTO FORNECEDOR VALUES('PANASONIC')
INSERT INTO FORNECEDOR VALUES('GENIUS')
INSERT INTO FORNECEDOR VALUES('HP')
go;

SELECT * FROM fornecedor
go;

-- INSER��O PRODUTOS
INSERT INTO produto VALUES('CAVALEIRO DOS 7 REINOS',30.00,15.00,1,1)
INSERT INTO PRODUTO VALUES('JOGOS VORAZES',45.00,22.00,1,1)
INSERT INTO PRODUTO VALUES('REVELADOS',48.00,24.00,1,1)
INSERT INTO PRODUTO VALUES('A CULPA � DAS ESTRELAS',24.00,12.00,1,1)
INSERT INTO PRODUTO VALUES('UM CASO PERDIDO',56.00,20.00,1,1)
INSERT INTO PRODUTO VALUES('WINDOWS 2016 VISAO GERAL',90.00,45.00,1,22)
INSERT INTO PRODUTO VALUES('EXCHANGE 2014',130.00,90.00,1,22)
INSERT INTO PRODUTO VALUES('C# PRATICO',60.00,45.00,1,22)
INSERT INTO PRODUTO VALUES('SQL SERVER 2016',30.00,15.00,1,22)
INSERT INTO PRODUTO VALUES('TSQL TUNING',90.00,75.00,1,22)
INSERT INTO PRODUTO VALUES('ADVANCED AZURE',70.00,55.00,1,22)
INSERT INTO PRODUTO VALUES('AS CR�NICAS DE ANDROMEDA',69.00,30.00,1,2)
INSERT INTO PRODUTO VALUES('CRONICAS ANTIGAS',189.00,60.00,1,2)
INSERT INTO PRODUTO VALUES('O SENHOR DO CRIME',199.00,120.00,1,3)
INSERT INTO PRODUTO VALUES('BARCO DE PEDRA',37.00,20.00,1,3)
INSERT INTO PRODUTO VALUES('O PATR�O',78.00,50.00,2,4)
INSERT INTO PRODUTO VALUES('A CASA',299.00,140.00,2,5)
INSERT INTO PRODUTO VALUES('A TEORIA',198.00,130.00,2,6)
INSERT INTO PRODUTO VALUES('DI�RIO ROM�NTICO',176.00,100.00,2,7)
INSERT INTO PRODUTO VALUES('DINOSSAUROS',40.00,18.00,2,4)
INSERT INTO PRODUTO VALUES('JACKSON',34.00,18.00,2,4)
INSERT INTO PRODUTO VALUES('ESCOLINHA DO JUCA',56.00,23.00,2,5)
INSERT INTO PRODUTO VALUES('CASOAS ANTIGOS',37.00,20.00,2,7)
INSERT INTO PRODUTO VALUES('O PEQUENO',43.00,23.00,2,7)
INSERT INTO PRODUTO VALUES('PODEROSO CHEFE',98.00,46.00,2,5)
INSERT INTO PRODUTO VALUES('MENTES CRIMINOSAS',210.00,130.00,2,6)
INSERT INTO PRODUTO VALUES('FAMILIA PARATTO',134.00,100.00,2,7)
INSERT INTO PRODUTO VALUES('GLADIADORES',145.00,90.00,2,7)
INSERT INTO PRODUTO VALUES('O SUPER-HER�I',45.00,20.00,2,4)
INSERT INTO PRODUTO VALUES('HOMEM DE A�O',45.00,20.00,2,6)
INSERT INTO PRODUTO VALUES('GRAVITACIONAL',78.00,37.00,2,6)
INSERT INTO PRODUTO VALUES('VINGAN�A',45.00,20.00,2,6)
INSERT INTO PRODUTO VALUES('JOGOS MAL�FICOS',38.00,23.00,2,6)
INSERT INTO PRODUTO VALUES('A VIDA SECRETA',37.00,21.00,2,7)
INSERT INTO PRODUTO VALUES('O IMORTAL',37.00,26.00,2,7)
INSERT INTO PRODUTO VALUES('CAVALEIRO DAS TREVAS',110.00,50.00,3,8)
INSERT INTO PRODUTO VALUES('CARTOON MOVIE',99.00,34.00,3,8)
INSERT INTO PRODUTO VALUES('CAVALEIROS DE PRATA',145.00,89.00,3,8)
INSERT INTO PRODUTO VALUES('WARIO',145.00,78.00,3,8)
INSERT INTO PRODUTO VALUES('JUST DANCE',99.00,34.00,3,8)
INSERT INTO PRODUTO VALUES('REVIVALS',145.00,57.00,3,9)
INSERT INTO PRODUTO VALUES('LOAD RUNNER',145.00,65.00,3,9)
INSERT INTO PRODUTO VALUES('FUTEBOL 2018',145.00,67.00,3,10)
INSERT INTO PRODUTO VALUES('SOCCER 2018',145.00,76.00,3,10)
INSERT INTO PRODUTO VALUES('DIABO',99.00,33.00,3,10)
INSERT INTO PRODUTO VALUES('FANTASY STAR',89.00,30.00,3,10)
INSERT INTO PRODUTO VALUES('TITANS',98.00,50.00,3,9)
INSERT INTO PRODUTO VALUES('RAIDER',120.00,50.00,3,9)
INSERT INTO PRODUTO VALUES('CASTELVANIA',120.00,53.00,3,10)
INSERT INTO PRODUTO VALUES('SOUTH PLACE',98.00,45.00,3,10)
INSERT INTO PRODUTO VALUES('DRAGON BLAZER',90.00,40.00,3,9)
INSERT INTO PRODUTO VALUES('THIEF',140.00,70.00,3,9)
INSERT INTO PRODUTO VALUES('FABULA',120.00,100.00,3,9)
INSERT INTO PRODUTO VALUES('DEVILCRY',120.00,65.00,3,9)
INSERT INTO PRODUTO VALUES('MAFIA',120.00,55.00,3,9)
INSERT INTO PRODUTO VALUES('MOTO G6',860.00,620.00,4,11)
INSERT INTO PRODUTO VALUES('MOTO G5',679.00,465.00,4,11)
INSERT INTO PRODUTO VALUES('MOTO Z PLAY 2',1150.00,900.00,4,11)
INSERT INTO PRODUTO VALUES('MOTOROLA TV',799.00,555.00,4,11)
INSERT INTO PRODUTO VALUES('CARREGADOR TURBO CELULAR',99.00,55.00,4,11)
INSERT INTO PRODUTO VALUES('NOKIA 549',450.00,300.00,4,12)
INSERT INTO PRODUTO VALUES('NOKIA QUARTY',300.00,190.00,4,12)
INSERT INTO PRODUTO VALUES('NOKIA ASHA 501',600.00,320.00,4,12)
INSERT INTO PRODUTO VALUES('NOKIA ASHA 202',700.00,430.00,4,12)
INSERT INTO PRODUTO VALUES('CARREGADOR UNIVERSAL NOKIA',100.00,60.00,4,12)
INSERT INTO PRODUTO VALUES('SAMSUNG E1203',560.00,385.00,4,13)
INSERT INTO PRODUTO VALUES('SAMSUNG XY 3',800.00,498.00,4,13)
INSERT INTO PRODUTO VALUES('SAMSUNG XY 4',1200.00,965.00,4,13)
INSERT INTO PRODUTO VALUES('SAMSUNG DUOS',1100.00,750.00,4,13)
INSERT INTO PRODUTO VALUES('LG OPTIMUS',890.00,500.00,4,14)
INSERT INTO PRODUTO VALUES('LG C397',500.00,360.00,4,14)
INSERT INTO PRODUTO VALUES('DREAMC VGA',150.00,79.00,5,15)
INSERT INTO PRODUTO VALUES('DREAMC QUARTY',180.00,98.00,5,15)
INSERT INTO PRODUTO VALUES('XTG E1',300.00,200.00,4,16)
INSERT INTO PRODUTO VALUES('XTG SOUND',320.00,190.00,5,16)
INSERT INTO PRODUTO VALUES('XTG RAD D3',700.00,489.00,5,16)
INSERT INTO PRODUTO VALUES('XTG RAD D1',800.00,567.00,5,16)
INSERT INTO PRODUTO VALUES('IPHONE 6',1900.00,1100.00,4,17)
INSERT INTO PRODUTO VALUES('IPHONE 7',2500.00,1900.00,4,17)
INSERT INTO PRODUTO VALUES('PLAYSTATION 4',1980.00,990.00,3,18)
INSERT INTO PRODUTO VALUES('PLAYSTATION 3',980.00,590.00,3,18)
INSERT INTO PRODUTO VALUES('SONY W100',980.00,530.00,4,18)
INSERT INTO PRODUTO VALUES('SONY W200',1100.00,900.00,4,18)
INSERT INTO PRODUTO VALUES('SONY W500',1200.00,780.00,4,18)
INSERT INTO PRODUTO VALUES('SONY I7',2500.00,1300.00,5,18)
INSERT INTO PRODUTO VALUES('SONY I5',1800.00,800.00,5,18)
INSERT INTO PRODUTO VALUES('DESKTOP I3',1800.00,986.00,5,23)
INSERT INTO PRODUTO VALUES('DESKTOP I5',2100.00,1020.00,5,23)
INSERT INTO PRODUTO VALUES('DESKTOP 17',2300.00,1800.00,5,23)
INSERT INTO PRODUTO VALUES('IPOD NANO 16',300.00,110.00,5,17)
INSERT INTO PRODUTO VALUES('IPOD NANO 32',450.00,320.00,5,17)
INSERT INTO PRODUTO VALUES('IPAD MINI 16',1200.00,790.00,5,17)
INSERT INTO PRODUTO VALUES('IPAD 32',1900.00,1300.00,5,17)
INSERT INTO PRODUTO VALUES('IPAD 64',2500.00,1700.00,5,17)
INSERT INTO PRODUTO VALUES('PENDRIVE 32 MULTILASER',50.00,25.00,5,21)
INSERT INTO PRODUTO VALUES('PENDRIVE 16',30.00,10.00,5,25)
INSERT INTO PRODUTO VALUES('PENDRIVE 64',80.00,45.00,5,25)
INSERT INTO PRODUTO VALUES('PENDRIVE 64 ML',85.00,40.00,5,21)
INSERT INTO PRODUTO VALUES('PENDRIVE 256',240.00,190.00,5,25)
INSERT INTO PRODUTO VALUES('PENDRIVE 128 CROSSAIR',137.00,98.00,5,25)
INSERT INTO PRODUTO VALUES('PENDRIVE 128',146.00,100.00,5,18)
INSERT INTO PRODUTO VALUES('HD 1T SAMSUNG',260.00,110.00,5,13)
INSERT INTO PRODUTO VALUES('HD 2T SAMSUNG',550.00,200.00,5,13)
INSERT INTO PRODUTO VALUES('HD 3T SAMSUNG',700.00,300.00,5,13)
INSERT INTO PRODUTO VALUES('HD 1T',290.00,150.00,5,21)
INSERT INTO PRODUTO VALUES('HD 2T',650.00,300.00,5,21)
INSERT INTO PRODUTO VALUES('HD 3T',760.00,390.00,5,21)
INSERT INTO PRODUTO VALUES('DESKTOP P5 ML',1400.00,950.00,5,21)
INSERT INTO PRODUTO VALUES('DESKTOP A5 ML',1300.00,890.00,5,21)
INSERT INTO PRODUTO VALUES('DESKTOP P5 PH',1400.00,980.00,5,25)
INSERT INTO PRODUTO VALUES('DESKTOP A5 PH',1300.00,700.00,5,25)
INSERT INTO PRODUTO VALUES('DESKTOP A5 HP',1300.00,890.00,5,41)
INSERT INTO PRODUTO VALUES('DESKTOP P5 HP',1400.00,980.00,5,41)
INSERT INTO PRODUTO VALUES('DESKTOP A5 HP',1300.00,700.00,5,41)
INSERT INTO PRODUTO VALUES('NOTEBOOK HP C-34',2300.00,1890.00,5,41)
INSERT INTO PRODUTO VALUES('NOTEBOOK HP ONE',1870.00,1300.00,5,41)
INSERT INTO PRODUTO VALUES('NOTEBOOK HP INOVE',3300.00,2700.00,5,41)
INSERT INTO PRODUTO VALUES('NOTEBOOK SONY JK',2800.00,1999.00,5,18)
INSERT INTO PRODUTO VALUES('NOTEBOOK SONY 3D',2500.00,2000.00,5,18)
INSERT INTO PRODUTO VALUES('NOTEBOOK SONY AWS',2750.00,2400.00,5,18)
INSERT INTO PRODUTO VALUES('NOTEBOOK MSFT HIBR',4800.00,2999.00,5,22)
INSERT INTO PRODUTO VALUES('NOTEBOOK MSFT TOUCH',3500.00,2800.00,5,22)
INSERT INTO PRODUTO VALUES('NOTEBOOK MSFT 17',3100.00,2700.00,5,22)
INSERT INTO PRODUTO VALUES('NOTEBOOK ACER 15',1500.00,800.00,5,23)
INSERT INTO PRODUTO VALUES('NOTEBOOK ACER 17',2100.00,1700.00,5,23)
INSERT INTO PRODUTO VALUES('NOTEBOOK LN 15',1500.00,800.00,5,37)
INSERT INTO PRODUTO VALUES('NOTEBOOK LN 17',2100.00,1700.00,5,37)
INSERT INTO PRODUTO VALUES('TABLET 7 LENOVO',600.00,450.00,5,37)
INSERT INTO PRODUTO VALUES('TABLET 10 LENOVO',800.00,650.00,5,37)
INSERT INTO PRODUTO VALUES('MP4 32 GB SONY',240.00,120.00,5,18)
INSERT INTO PRODUTO VALUES('PC DUAL CORE',1350.00,890.00,5,25) 
INSERT INTO PRODUTO VALUES('GALAXY TAB 10',2300.00,750.00,5,13)
INSERT INTO PRODUTO VALUES('GALAXY NOTE',2900.00,1542.00,4,13)
INSERT INTO PRODUTO VALUES('ROTEADOR WIRELESS',90.00,38.00,5,21)
INSERT INTO PRODUTO VALUES('ROTEADOR 18 PORTAS',300.00,110.00,5,21)
INSERT INTO PRODUTO VALUES('ADAPTADOR WIRELESS',89.00,60.00,5,23)
INSERT INTO PRODUTO VALUES('HUB SWITCH 6 PORTAS',79.00,60.00,5,23)
INSERT INTO PRODUTO VALUES('MEMORIA DDR 3 4GB',80.00,45.00,5,24)
INSERT INTO PRODUTO VALUES('MEMORIA DDR 3 8GB',90.00,50.00,5,24)
INSERT INTO PRODUTO VALUES('MEMORIA DDR 3 16GB',140.00,75.00,5,24)
INSERT INTO PRODUTO VALUES('MEMORIA DDR 3 32GB',350.00,203.00,5,24)
INSERT INTO PRODUTO VALUES('LEITOR DE CARTOES',34.00,10.00,5,24)
INSERT INTO PRODUTO VALUES('LEITOR DE CARTOES MULTILASER',24.00,11.00,5,21)
INSERT INTO PRODUTO VALUES('CARTAO SD 32 GB SANDISK',32.00,15.00,5,26)
INSERT INTO PRODUTO VALUES('CARTAO SD 64 GB SAMSUNG',78.00,55.00,5,13)
INSERT INTO PRODUTO VALUES('CARTAO SD 128 GB SANDISK',156.00,99.00,5,26)
INSERT INTO PRODUTO VALUES('CARTAO SD 32 GB SANDISK',32.00,15.00,5,26)
INSERT INTO PRODUTO VALUES('CARTAO SD 64 GB SAMSUNG',78.00,55.00,5,13)
INSERT INTO PRODUTO VALUES('CARTAO SD 128 GB SANDISK',156.00,99.00,5,26) 
INSERT INTO PRODUTO VALUES('PLACA DE SOM',290.00,130.00,5,16)
INSERT INTO PRODUTO VALUES('COMBO TECLADO E MOUSE',310.00,120.00,5,22)
INSERT INTO PRODUTO VALUES('TECLADO WIRELESS MULTILASER',120.00,90.00,5,21)
INSERT INTO PRODUTO VALUES('MOUSE OPTICO',89.00,51.00,5,22)
INSERT INTO PRODUTO VALUES('COMBO TECLADO E MOUSE',130.00,89.00,5,40)
INSERT INTO PRODUTO VALUES('TECLADO WIRELESS',89.00,70.00,5,40)
INSERT INTO PRODUTO VALUES('MOUSE OPTICO',59.00,41.00,5,40)
INSERT INTO PRODUTO VALUES('MOCHILA NOTEBOOK 14 POL',89.00,61.00,5,40)
INSERT INTO PRODUTO VALUES('MOCHILA NOTEBOOK 15.6 POL',109.00,81.00,5,40)
INSERT INTO PRODUTO VALUES('MOCHILA NOTEBOOK 17 POL',139.00,91.00,5,40)
INSERT INTO PRODUTO VALUES('TV LED 42 SONY',2000.00,1420.00,6,18)
INSERT INTO PRODUTO VALUES('TV LED 32 SONY',1000.00,750.00,6,18)
INSERT INTO PRODUTO VALUES('TV LED 50 SONY',3200.00,2465.00,6,18)
INSERT INTO PRODUTO VALUES('TV LED 60 SONY',3900.00,3051.00,6,18)
INSERT INTO PRODUTO VALUES('TV LED 42 LG',2000.00,1620.00,6,14)
INSERT INTO PRODUTO VALUES('TV LED 32 LG',1100.00,850.00,6,14)
INSERT INTO PRODUTO VALUES('TV LED 50 LG',3100.00,2900.00,6,14)
INSERT INTO PRODUTO VALUES('TV LED 55 LG',3900.00,3050.00,6,14)
INSERT INTO PRODUTO VALUES('TV LED 42 SAMSUNG',2200.00,1354.00,6,13)
INSERT INTO PRODUTO VALUES('TV LED 32 SAMSUNG',1210.00,763.00,6,13)
INSERT INTO PRODUTO VALUES('TV LED 50 SAMSUNG',3300.00,2900.00,6,13)
INSERT INTO PRODUTO VALUES('TV LED 60 SAMSUNG',3800.00,3000.00,6,13)
INSERT INTO PRODUTO VALUES('TV PLASMA PHILIPS 42',1200.00,980.00,6,25)
INSERT INTO PRODUTO VALUES('TV LED 42 CCE',1600.00,800.00,6,38)
INSERT INTO PRODUTO VALUES('HOME THEATER LG',230.00,100.00,6,14)
INSERT INTO PRODUTO VALUES('HOME THEATER PANASONIC',245.00,150.00,6,39)
INSERT INTO PRODUTO VALUES('SMART TV PHILIPS 46',3199.00,2500.00,6,25)
INSERT INTO PRODUTO VALUES('SMART TV SAMSUNG 52',4300.00,3800.00,6,13)
INSERT INTO PRODUTO VALUES('SMART TV PANASONIC 46',3099.00,2500.00,6,39)
INSERT INTO PRODUTO VALUES('SMART TV PANASONIC 52',4200.00,3800.00,6,39)
INSERT INTO PRODUTO VALUES('SMART TV PANASONIC 32',1099.00,700.00,6,39)
INSERT INTO PRODUTO VALUES('SMART TV PANASONIC 42',2200.00,1800.00,6,39)
INSERT INTO PRODUTO VALUES('TV 3D PHILIPS 42',3800.00,3201.00,6,18)
INSERT INTO PRODUTO VALUES('TV 3D SONY 42',3100.00,2684.00,6,18)
INSERT INTO PRODUTO VALUES('LAVADORA LG 10L',2800.00,2186.00,7,14)
INSERT INTO PRODUTO VALUES('GELADEIRA BRASTEMP',3000.00,2463.00,7,27)
INSERT INTO PRODUTO VALUES('MICROONDAS BRASTEMP',600.00,412.00,7,27)
INSERT INTO PRODUTO VALUES('LAVADORA GANCA 10L',5400.00,5020.00,7,28)
INSERT INTO PRODUTO VALUES('CHAPA A GAS GANCA',1800.00,985.00,7,28)
INSERT INTO PRODUTO VALUES('PANIFICADORA BRITANIA',250.00,130.00,7,29)
INSERT INTO PRODUTO VALUES('GRILL GEROGE FOREMAN',250.00,210.00,7,28)
INSERT INTO PRODUTO VALUES('MIXER WALLITA',160.00,98.00,7,19)
INSERT INTO PRODUTO VALUES('MIXER BRITANIA',90.00,68.00,7,29)
INSERT INTO PRODUTO VALUES('LIQUIDIFICADOR WALLITA',90.00,75.00,7,19)
INSERT INTO PRODUTO VALUES('LIQUIDIFICADOR ARNO',87.00,72.00,7,19)
INSERT INTO PRODUTO VALUES('BATEDEIRA BRASTEMP',120.00,95.00,7,27)
INSERT INTO PRODUTO VALUES('JUICER WALLITA',450.00,367.00,7,19)
INSERT INTO PRODUTO VALUES('JUICER ARNO',450.00,367.00,7,20)
INSERT INTO PRODUTO VALUES('JUICER CCE',430.00,347.00,7,38)
INSERT INTO PRODUTO VALUES('CENTRIFUGA ARNO',2800.00,2030.00,7,20)
INSERT INTO PRODUTO VALUES('FREEZER 300L BRASTEMP',1800.00,986.00,7,27)
INSERT INTO PRODUTO VALUES('LAVA LOUCAS BRASTEMP',3500.00,2945.00,7,27)
INSERT INTO PRODUTO VALUES('LAVA LOUCAS CCE',3600.00,2745.00,7,38)
INSERT INTO PRODUTO VALUES('MESA 4 LUGARES',1000.00,823.00,8,30)
INSERT INTO PRODUTO VALUES('CADEIRA DE FERRO',300.00,160.00,8,31)
INSERT INTO PRODUTO VALUES('MESA JANTAR 6 LUGARES',2500.00,1900.00,8,31)
INSERT INTO PRODUTO VALUES('RACK TV MOGNO',1500.00,1087.00,8,31)
INSERT INTO PRODUTO VALUES('ARMARIO COZINHA 6 PORTAS',2500.00,2030.00,8,31)
INSERT INTO PRODUTO VALUES('CONJUNTO DE SOFA',3500.00,2954.00,8,31)
INSERT INTO PRODUTO VALUES('MESA DE CENTRO',500.00,350.00,8,30)
INSERT INTO PRODUTO VALUES('CAMA SOLTEIRO',600.00,256.00,8,31)
INSERT INTO PRODUTO VALUES('CAMA CASAL',1000.00,752.00,8,31)
INSERT INTO PRODUTO VALUES('SAO PAULO / RECIFE',360.00,300.00,9,32)
INSERT INTO PRODUTO VALUES('SAO PAULO / GOIANIA',400.00,360.00,9,32)
INSERT INTO PRODUTO VALUES('SAO PAULO / SALVADOR',450.00,400.00,9,32)
INSERT INTO PRODUTO VALUES('SAO PAULO / RIO DE JANEIRO',230.00,180.00,9,33)
INSERT INTO PRODUTO VALUES('SAO PAULO / BELO HORIZONTE',250.00,200.00,9,33)
INSERT INTO PRODUTO VALUES('SAO PAULO / BUENOS AIRES',1090.00,1000.00,9,34)
INSERT INTO PRODUTO VALUES('SAO PAULO / LIMA',1900.00,1830.00,9,34)
INSERT INTO PRODUTO VALUES('SAO PAULO / MIAMI',2300.00,2156.00,9,36)
INSERT INTO PRODUTO VALUES('SAO PAULO / MADRID',2700.00,2350.00,9,35)
INSERT INTO PRODUTO VALUES('SAO PAULO / ROMA',2800.00,2400.00,9,35)
INSERT INTO PRODUTO VALUES('SAO PAULO / CURITIBA',300.00,260.00,9,33)
INSERT INTO PRODUTO VALUES('SAO PAULO / LONDRINA',310.00,280.00,9,33)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / CAMPINAS',250.00,210.00,9,34)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / LIMA',1900.00,1570.00,9,34)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / RECIFE',560.00,500.00,9,34)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / CURITIBA',450.00,400.00,9,34)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / LONDRINA',430.00,390.00,9,34)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / MADRID',1800.00,1623.00,9,35)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / PARIS',2300.00,1980.00,9,35)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / MIAMI',1900.00,1763.00,9,36)
INSERT INTO PRODUTO VALUES('RIO DE JANEIRO / NEW YORK',2600.00,2354.00,9,36)
go;

SELECT * FROM produto
go;


-- INSER��O VENDEDORES
INSERT INTO VENDEDOR VALUES('EDUARDO SANTOS','M','ESANTOS.MANAGER@TERA.COM',NULL)
INSERT INTO VENDEDOR VALUES('RENATA MONTEIRO','F','RMONT@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('JOAO NUNES','M','JNUNES@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('CLARA MAFRA','F','CMAFRA@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('GERALDO FRANCISCO','M','GFRANCISCO@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('RODRIGO BIO','M','RBIO@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('SERGIO AGUDO','M','SAGUDO@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('PILAR SANCHES','F','PSANCHES@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('MARCELO WITEMBERG','M','MWITEMBERG@TERA.COM',1)
INSERT INTO VENDEDOR VALUES('LILIAN SALINAS','F','LSALINAS@TERA.COM',NULL)
INSERT INTO VENDEDOR VALUES('RAFAELA LIMA','F','RLIMA@TERA.COM',10)
INSERT INTO VENDEDOR VALUES('CELIA TAVARES','F','CTAVARES@TERA.COM',10)
INSERT INTO VENDEDOR VALUES('HERMES MACEDO','M','HMACEDO@TERA.COM',10)
INSERT INTO VENDEDOR VALUES('SILVIO BAHIANA','M','SBAHIANA@TERA.COM',10)
INSERT INTO VENDEDOR VALUES('DEBORA ALMEIDA','F','DALMEIDA@TERA.COM',10)
INSERT INTO VENDEDOR VALUES('DAVID BORGES','M','DBORGES@TERA.COM',NULL)
INSERT INTO VENDEDOR VALUES('TERESA CRISTINA','F','TCRISTINA@TERA.COM',15)
INSERT INTO VENDEDOR VALUES('RODRIGO MARQUES','M','EMACHADO@TERA.COM',15)
INSERT INTO VENDEDOR VALUES('CARLOS SENRA','M','CSENRA@TERA.COM',16)
INSERT INTO VENDEDOR VALUES('FABIO AUGUSTO','M','FAUGUSTO@TERA.COM',16)
INSERT INTO VENDEDOR VALUES('WALLACE MOREIRA','M','WMOREIRA@TERA.COM',16)
INSERT INTO VENDEDOR VALUES('RENE CHIARI','M','RCHIARI@TERA.COM',16)
INSERT INTO VENDEDOR VALUES('ANTONIO JESUS','M','AJESUS@TERA.COM',16)
INSERT INTO VENDEDOR VALUES('PEDRO NUNES','M','PNUNES@TERA.COM',16)
go 

SELECT * FROM vendedor
go











	
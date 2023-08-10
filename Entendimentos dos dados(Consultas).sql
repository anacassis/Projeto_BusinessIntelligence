SELECT * FROM cliente;
go
use comercio_oltp
go;

drop table endereco
select * from endereco_cliente
go
SELECT * FROM endereco_cliente 
go

SELECT * from cliente;
go

SELECT c.nome, e.rua
FROM cliente as c
INNER JOIN endereco_cliente as e
ON c.idcliente = e.id_cliente;
go

SELECT count(*) as qtd
FROM cliente as c
INNER JOIN endereco_cliente as e
ON c.idcliente = e.id_cliente;
go;



/* truncate table - DDL apaga tdo a tabela (manipula a estrutura)*/
--truncate table ....
/* delete DML - DML só apaga os registros*/
--delete from....

SELECT * FROM vendedor
where id_gerente = 15
go

SELECT * FROM vendedor
where id_gerente = null
go

-- vendedores
SELECT idvendedor,
		nome,
		nome, 
		id_gerente 
FROM vendedor
go

-- select de tabela de AUTORELACIONAMENTO
SELECT v.idvendedor,
		v.nome,
		g.nome, 
		g.sexo,
		g.idvendedor
FROM vendedor v
INNER JOIN vendedor g
ON v.idvendedor = g.id_gerente
go








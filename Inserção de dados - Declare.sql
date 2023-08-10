use comercio_oltp
go

SELECT TOP 1 idcliente FROM cliente
ORDER BY
NEWID()
go

select * from cliente
go

SELECT TOP 1 idvendedor FROM vendedor
ORDER BY
NEWID()

SELECT TOP 1 idforma FROM forma_pagamento 
ORDER BY NEWID()


SELECT RAND() * 12


/* PREENCHENDO A TABELA NOTAS FISCAIS */
DECLARE 
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN

	SET @ID_CLIENTE = 
		(SELECT TOP 1 idcliente FROM cliente ORDER BY NEWID())
	SET @ID_VENDEDOR = 
		(SELECT TOP 1 idvendedor FROM vendedor ORDER BY NEWID())
	SET @ID_FORMA =
		(SELECT TOP 1 idforma FROM forma_pagamento ORDER BY NEWID()) 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15),'2017-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12))+ 1) + '-' +
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*27))+1))))

	INSERT INTO NOTA_FISCAL( id_cliente, id_vendedor, id_forma, data_venda) VALUES
	(@ID_CLIENTE,@ID_VENDEDOR, @ID_FORMA,@DATA)
	

END
GO 9000



DECLARE 
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN

	SET @ID_CLIENTE = 
		(SELECT TOP 1 idcliente FROM cliente ORDER BY NEWID())
	SET @ID_VENDEDOR = 
		(SELECT TOP 1 idvendedor FROM vendedor ORDER BY NEWID())
	SET @ID_FORMA =
		(SELECT TOP 1 idforma FROM forma_pagamento ORDER BY NEWID()) 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15),'2015-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12))+ 1) + '-' +
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*27))+1))))

	INSERT INTO NOTA_FISCAL( id_cliente, id_vendedor, id_forma, data_venda) VALUES
	(@ID_CLIENTE,@ID_VENDEDOR, @ID_FORMA,@DATA)
	

END
GO 8000


DECLARE 
	@ID_CLIENTE INT,
	@ID_VENDEDOR INT,
	@ID_FORMA INT,
	@DATA DATE
BEGIN

	SET @ID_CLIENTE = 
		(SELECT TOP 1 idcliente FROM cliente ORDER BY NEWID())
	SET @ID_VENDEDOR = 
		(SELECT TOP 1 idvendedor FROM vendedor ORDER BY NEWID())
	SET @ID_FORMA =
		(SELECT TOP 1 idforma FROM forma_pagamento ORDER BY NEWID()) 
	SET @DATA = (SELECT
				CONVERT(DATE, CONVERT(VARCHAR(15),'2016-' + 
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*12))+ 1) + '-' +
				CONVERT(VARCHAR(5),(CONVERT(INT,RAND()*27))+1))))

	INSERT INTO NOTA_FISCAL( id_cliente, id_vendedor, id_forma, data_venda) VALUES
	(@ID_CLIENTE,@ID_VENDEDOR, @ID_FORMA,@DATA)
	

END
GO 8400


SELECT CONVERT(VARCHAR(5),CONVERT(INT,RAND()*12)+ 1) 
GO

SELECT CONVERT(VARCHAR(5),(CONVERT(INT,RAND() *27)+1)) 
GO

SELECT * FROM nota_fiscal
GO

SELECT COUNT(*) FROM nota_fiscal
GO 





SELECT * FROM item_nota
SELECT * FROM produto


SELECT * FROM PRODUTO
WHERE idproduto = 133

SELECT * FROM item_nota

SELECT I.id_nota_fiscal FROM PRODUTO AS A
LEFT JOIN item_nota AS I
ON I.id_produt= A.IDPRODUTO  

SELECT * FROM nota_fiscal
where idnota = 36780


SELECT * FROM item_nota
where id_nota_fiscal = 36780

SELECT SUM(total), id_produt from item_nota
where id_produt = 133
group by id_produt

SELECT * FROM cliente

/* nome, sobrenme, sexo, data, idnota, produto, total */

SELECT 
    C.NOME,
    C.SOBRENOME,
    C.SEXO,
    N.data_venda,
    N.IDNOTA,
    P.PRODUTO,
    N.valor_total 
FROM 
    cliente AS C
INNER JOIN 
    nota_fiscal AS N ON C.idcliente = N.id_cliente
INNER JOIN 
    item_nota AS I ON N.idnota = I.id_nota_fiscal
INNER JOIN 
    produto AS P ON I.id_produt = P.idproduto
ORDER BY 
    idnota ASC;

/* CRIANDO UMA VIEW */
CREATE VIEW V_NOTA 
AS
	SELECT id_nota_fiscal, SUM(total) AS SOMATORIA from item_nota
	group by id_nota_fiscal
GO
SELECT * FROM V_NOTA


CREATE VIEW V_CARGA 
AS
SELECT N.IDNOTA, N.valor_total, V.SOMATORIA 
FROM nota_fiscal N
INNER JOIN V_NOTA AS V
ON N.IDNOTA = V.ID_NOTA_FISCAL

/* INSERINDO VALORES NA VIEW OBS AAS ALTERAÇÕES DAS VIEWS REFLETEM NA TABELA */
UPDATE V_CARGA SET VALOR_TOTAL = SOMATORIA
GO

SELECT * FROM nota_fiscal
 go

CREATE VIEW v_relatorio as
 SELECT 
    C.NOME,
    C.SOBRENOME,
    C.SEXO,
    N.data_venda,
    N.IDNOTA,
    P.PRODUTO,
    N.valor_total 
FROM 
    cliente AS C
INNER JOIN 
    nota_fiscal AS N ON C.idcliente = N.id_cliente
INNER JOIN 
    item_nota AS I ON N.idnota = I.id_nota_fiscal
INNER JOIN 
    produto AS P ON I.id_produt = P.idproduto
go

SELECT * FROM v_relatorio
GO


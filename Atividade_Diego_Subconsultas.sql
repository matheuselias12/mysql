#1

SELECT * FROM historicovendas
WHERE id_vendedor IN (SELECT id_vendedor FROM vendedor WHERE nome_vendedor = 'Giovana');

#2

SELECT avaliacao, nome_cliente
FROM cliente
WHERE avaliacao <= ANY (SELECT AVG(avaliacao) FROM cliente)
ORDER BY avaliacao DESC;

#3

SELECT * FROM vendedor
WHERE id_cidade IN (SELECT id_cidade FROM cidade WHERE nome_cidade = 'Belo Horizonte')
ORDER BY id_vendedor AND nome_vendedor;

#4

SELECT avaliacao, nome_cliente
FROM cliente
WHERE avaliacao >= ANY (SELECT MAX(avaliacao) FROM cliente)
ORDER BY avaliacao DESC;

#5

SELECT * FROM vendedor
WHERE id_cidade IN (SELECT id_cidade FROM cliente);

#6

SELECT * FROM historicovendas
WHERE id_vendedor IN (SELECT id_vendedor FROM vendedor WHERE comissao >= 0.25);

#7

SELECT id_cidade, nome_cidade
FROM cidade
WHERE NOT EXISTS(SELECT * FROM cliente WHERE cliente.id_cidade = cidade.id_cidade)
ORDER BY id_cidade AND nome_cidade asc;

#8

SELECT id_cidade, nome_cidade
FROM cidade
WHERE EXISTS(SELECT * FROM vendedor WHERE vendedor.id_cidade = cidade.id_cidade)
ORDER BY id_cidade AND nome_cidade asc;

#9

SELECT id_vendedor, nome_vendedor FROM vendedor
WHERE NOT EXISTS( SELECT * FROM historicovendas  WHERE historicovendas.id_vendedor = vendedor.id_vendedor)
ORDER BY nome_vendedor asc;

#10

SELECT nome_cliente 
FROM cliente
WHERE NOT EXISTS( SELECT * FROM historicovendas  WHERE historicovendas.id_cliente = cliente.id_cliente)
ORDER BY nome_cliente asc;

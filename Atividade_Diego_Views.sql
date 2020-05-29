

USE vendas;

#1
CREATE VIEW avaliacao_clientes AS
SELECT * FROM cliente
ORDER BY avaliacao DESC;

#2
CREATE VIEW vendedores_bh AS
SELECT id_vendedor, nome_vendedor 
FROM vendedor
JOIN cidade ON cidade.id_cidade = vendedor.id_cidade
WHERE cidade.nome_cidade = 'Belo Horizonte'
ORDER BY nome_vendedor ASC;

#3
CREATE VIEW sumario_vendas AS
SELECT DISTINCT vendedor.id_vendedor, nome_vendedor,count(*)
FROM vendedor
INNER JOIN HistoricoVendas ON vendedor.id_vendedor = HistoricoVendas.id_vendedor
GROUP BY nome_vendedor
ORDER BY count(*) DESC;

#4
CREATE VIEW lucro_vendas AS
SELECT DISTINCT nome_vendedor, SUM(valor_venda * comissao)
FROM vendedor
INNER JOIN HistoricoVendas ON vendedor.id_vendedor = HistoricoVendas.id_vendedor
group by nome_vendedor
ORDER BY nome_vendedor and sum(valor_venda * comissao) DESC;

#5
CREATE VIEW qtde_vendas AS
SELECT COUNT(*)
FROM historicovendas
WHERE data_venda >= '2019-10-01' AND data_venda <= '2019-10-31'
ORDER BY data_venda asc;

#6
CREATE OR REPLACE VIEW avaliacao_clientes AS
SELECT nome_cliente, avaliacao
FROM cliente
ORDER BY avaliacao DESC;

#7
CREATE VIEW planejamento_vendas_cidade AS
SELECT nome_vendedor, nome_cidade
FROM vendedor
JOIN cidade ON cidade.id_cidade = vendedor.id_cidade
ORDER BY nome_vendedor asc;

#8
CREATE VIEW vendedores_sem_clientes AS
SELECT nome_vendedor
FROM vendedor
WHERE NOT EXISTS(SELECT * FROM historicovendas WHERE historicovendas.id_vendedor = vendedor.id_vendedor)
ORDER BY nome_vendedor ASC;

#9
DROP VIEW qtde_vendas, vendedores_bh;

#10
CREATE VIEW clientes_abaixo_da_media_da_avaliacao AS
SELECT nome_cliente, avaliacao
FROM cliente
WHERE avaliacao <= ANY (SELECT AVG(avaliacao) FROM cliente)
ORDER BY avaliacao AND nome_cliente DESC;

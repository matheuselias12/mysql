
USE `pokedex`;

SELECT * FROM Pokemon;

SELECT nome
FROM Pokemon;

SELECT numero, nome, cor, altura_m, peso_kg
FROM Pokemon;

SELECT numero, nome
FROM Pokemon
WHERE geracao = 1;

SELECT nome
FROM Pokemon
WHERE geracao = 1 AND cor = 'amarelo';

SELECT nome,total
FROM Pokemon
WHERE total > 700;

SELECT numero, nome, tipo1
FROM Pokemon
WHERE tipo1 = 'Fire';

SELECT numero, nome, defesa
FROM Pokemon
ORDER BY numero DESC;

SELECT numero, nome
FROM Pokemon
WHERE taxa_captura < 4
LIMIT 1;

SELECT nome, tipo2
FROM Pokemon
WHERE tipo2 IS NULL;

SELECT numero, nome, tipo1, tipo2, peso_kg
FROM Pokemon
WHERE peso_kg > 100 AND peso_kg < 500;

SELECT numero, nome, velocidade
FROM Pokemon
WHERE velocidade > 120
LIMIT 10;

SELECT numero, nome, tipo1, tipo2, taxa_captura
FROM Pokemon
WHERE taxa_captura > 100
ORDER BY taxa_captura DESC;

SELECT DISTINCT tipo1
FROM Pokemon
WHERE tipo1 LIKE tipo1;

SELECT numero, nome, cor
FROM Pokemon
WHERE nome LIKE 'd%';

SELECT DISTINCT numero, nome, total,geracao
FROM Pokemon
WHERE total > 700;

SELECT numero, nome, defesa, ataque,total
FROM Pokemon
WHERE defesa > 60 AND ataque <= 70 
ORDER BY total DESC; 

SELECT tipo1, tipo2, cor, nome
FROM Pokemon
WHERE tipo1 = 'Planta' AND tipo2 = 'Venenoso' AND cor <> 'Green'
ORDER BY nome ASC;

SELECT nome
FROM Pokemon
WHERE nome LIKE '___y%'
ORDER BY nome ASC;

SELECT nome, ataque_especial
FROM Pokemon
WHERE ataque_especial > 150;

SELECT numero, nome, altura_m
FROM Pokemon
WHERE altura_m > 2.10
ORDER BY altura_m ASC;

SELECT DISTINCT cor
FROM Pokemon;

SELECT nome, velocidade
FROM Pokemon
WHERE velocidade > 30 AND velocidade < 70
ORDER BY nome ASC, velocidade DESC;

SELECT nome, total, lendario
FROM Pokemon
WHERE lendario > 0
ORDER BY total DESC;

SELECT nome, tipo1, geracao, taxa_captura
FROM Pokemon
WHERE geracao = 1 AND taxa_captura = 255;

SELECT numero, nome, total
FROM Pokemon
WHERE nome = 'Pikachu' OR nome = 'Squirtle' OR nome = 'Bulbasaur' OR nome = 'Charmander'
ORDER BY total DESC;

SELECT geracao, nome, tipo2, taxa_captura, total
FROM Pokemon
WHERE tipo2 IS NULL AND geracao = 1 AND nome LIKE 'd%'
ORDER BY taxa_captura ASC, total DESC;

SELECT  numero, nome, total, taxa_captura, lendario
FROM Pokemon
WHERE lendario > 0 AND taxa_captura > 0 AND total > 600
LIMIT 5;

SELECT  numero, nome, peso_kg
FROM Pokemon
WHERE peso_kg BETWEEN 2 AND 3;

SELECT  numero, nome, tipo1, tipo2
FROM Pokemon
WHERE tipo1 = 'Normal' AND tipo2 IS NULL;

SELECT numero, nome, tipo1, tipo2, cor
FROM Pokemon
WHERE tipo1 = 'Water' AND cor <> 'blue'
ORDER BY nome ASC;

SELECT numero, nome, velocidade
FROM Pokemon
WHERE velocidade < 20
LIMIT 10;

SELECT numero, nome, velocidade
FROM Pokemon
WHERE nome LIKE 'a%' AND nome LIKE '%a';

SELECT numero, nome, tipo1, tipo2, cor
FROM Pokemon
WHERE tipo1 = 'Fire' AND cor <> 'Red'
ORDER BY NOME ASC;

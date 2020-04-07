# mysql
banco-de-dados

#Selecione o banco de dados (esquema) pokédex.

USE `pokedex`;

#Obtenha informações da estrutura da tabela Pokémon.

SELECT * FROM Pokemon;

#Selecione todos os pokémons cadastrados no banco de dados.

SELECT nome
FROM Pokemon;

#Selecione o numero, nome, cor, altura_m e peso_kg de todos os pokémons cadastrados.

SELECT numero, nome, cor, altura_m, peso_kg
FROM Pokemon;


#Qual é o numero e o nome de todos os pokémons da primeira geração?

SELECT numero, nome
FROM Pokemon
WHERE geracao = 1;

#Quais são os pokémons Amarelo da primeira geração?

SELECT nome
FROM Pokemon
WHERE geracao = 1 AND cor = 'amarelo';

#Qual é o pokémon mais forte?

SELECT nome,total
FROM Pokemon
WHERE total > 700;

#Selecione o numero, nome e tipo1 de todos os pokémons cujo tipo primário é Fire

SELECT numero, nome, tipo1
FROM Pokemon
WHERE tipo1 = 'Fire';


#Selecione em ordem decrescente o numero, nome e defesa de todos os pokémons.

SELECT numero, nome, defesa
FROM Pokemon
ORDER BY numero DESC;

#Qual o pokémon possui menor taxa de captura? Selecione apenas numero e nome.

SELECT numero, nome
FROM Pokemon
WHERE taxa_captura < 4
LIMIT 1;

#Selecione todos pokémons que não possuem tipo secundário, ou seja, tipo2.

SELECT nome, tipo2
FROM Pokemon
WHERE tipo2 IS NULL;

#Selecione numero, nome, tipo1, tipo2 de todos os pokémons que possuem o peso entre 100kg e 500kg.

SELECT numero, nome, tipo1, tipo2, peso_kg
FROM Pokemon
WHERE peso_kg > 100 AND peso_kg < 500;

#Crie um ranking dos top 10 pokémons mais velozes, contendo numero, nome e velocidade.

SELECT numero, nome, velocidade
FROM Pokemon
WHERE velocidade > 120
LIMIT 10;

#Selecione numero, nome, tipo1, tipo2, taxa_captura dos pokémons que possuem os dois tipos e tenham uma taxa de captura acima de 100. Ordene os resultados decrescente pela taxa de captura.

SELECT numero, nome, tipo1, tipo2, taxa_captura
FROM Pokemon
WHERE taxa_captura > 100
ORDER BY taxa_captura DESC;

#Quais são os tipos primários dos pokémons?

SELECT DISTINCT tipo1
FROM Pokemon
WHERE tipo1 LIKE tipo1;

#Selecione o numero, nome e cor de todos os pokémons que o nome começa com a letra D.

SELECT numero, nome, cor
FROM Pokemon
WHERE nome LIKE 'd%';


#Qual é o pokémon mais poderoso de todas as gerações?

SELECT DISTINCT numero, nome, total,geracao
FROM Pokemon
WHERE total > 700;

#Selecione o numero, nome, defesa, ataque dos pokémons com defesa > 60 e ataque <= 70; ordenados decrescente pelo total.

SELECT numero, nome, defesa, ataque,total
FROM Pokemon
WHERE defesa > 60 AND ataque <= 70 
ORDER BY total DESC; 

#Selecione todos os pokémons do tipo Planta e Venenoso que não sejam Green, ordenado crescente pelo nome.

SELECT tipo1, tipo2, cor, nome
FROM Pokemon
WHERE tipo1 = 'Planta' AND tipo2 = 'Venenoso' AND cor <> 'Green'
ORDER BY nome ASC;

#Selecione de maneira crescente os nomes dos pokémons que possuem a letra y na 4ª posição do nome.

SELECT nome
FROM Pokemon
WHERE nome LIKE '___y%'
ORDER BY nome ASC;

#Qual é o maior valor de ataque_especial cadastrado?

SELECT nome, ataque_especial
FROM Pokemon
WHERE ataque_especial > 150;

#Selecione o numero, nome e altura_m dos pokémons que possuem altura acima de 2,10m.

SELECT numero, nome, altura_m
FROM Pokemon
WHERE altura_m > 2.10
ORDER BY altura_m ASC;

#Quais são as diferentes tipos de cores dos pokémons? Apresente os resultados de maneira crescente pelo nome da cor.

SELECT DISTINCT cor
FROM Pokemon;

#Selecione o nome e velocidade dos pokémons com velocidade entre 30 e 70. Ordene os resultados por nome (crescente) e velocidade (decrescente)

SELECT nome, velocidade
FROM Pokemon
WHERE velocidade > 30 AND velocidade < 70
ORDER BY nome ASC, velocidade DESC;

#Quem são os pokémons lendários? Apresente os resultados ordenados por total decrescente.

SELECT nome, total, lendario
FROM Pokemon
WHERE lendario > 0
ORDER BY total DESC;

#Selecione os pokémons da primeira geração com taxa de captura igual a 255.

SELECT nome, tipo1, geracao, taxa_captura
FROM Pokemon
WHERE geracao = 1 AND taxa_captura = 255;

#Quem é o mais poderoso? selecione o Pikachu, Squirtle, Bulbasaur e Charmander; ordenados decrescente pelo total.

SELECT numero, nome, total
FROM Pokemon
WHERE nome = 'Pikachu' OR nome = 'Squirtle' OR nome = 'Bulbasaur' OR nome = 'Charmander'
ORDER BY total DESC;

#Quem são os pokémons da primeira geração, que começam com a letra d e não possuem tipo secundário? 
#Ordene os resultados crescente por taxa_captura e decrescente pelo total.

SELECT geracao, nome, tipo2, taxa_captura, total
FROM Pokemon
WHERE tipo2 IS NULL AND geracao = 1 AND nome LIKE 'd%'
ORDER BY taxa_captura ASC, total DESC;

#Qual é o ranking dos top 5 pokémons lendários com maior taxa_captura e total? Apresente apenas numero, nome, total, taxa_captura nos resultados.

SELECT  numero, nome, total, taxa_captura, lendario
FROM Pokemon
WHERE lendario > 0 AND taxa_captura > 0 AND total > 600
LIMIT 5;

#Selecione o numero, nome, peso_kg dos pokémons com peso entre 2kg e 3kgs?

SELECT  numero, nome, peso_kg
FROM Pokemon
WHERE peso_kg BETWEEN 2 AND 3;

#Selecione o numero, nome, tipo1 e tipo2 dos pokémons com tipo primário Normal, que não possuem tipo secundário. Existe algum pokémon lendário nos resultados, se sim, os remova dos resultados?

SELECT  numero, nome, tipo1, tipo2
FROM Pokemon
WHERE tipo1 = 'Normal' AND tipo2 IS NULL;

#Quem são os pokémons do tipo Water que não são azuis? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.

SELECT numero, nome, tipo1, tipo2, cor
FROM Pokemon
WHERE tipo1 = 'Water' AND cor <> 'blue'
ORDER BY nome ASC;

#Crie um ranking dos top 10 pokémons mais lentos.

SELECT numero, nome, velocidade
FROM Pokemon
WHERE velocidade < 20
LIMIT 10;


#Selecione os pokémons cujo nome comece e termine com a letra a.

SELECT numero, nome, velocidade
FROM Pokemon
WHERE nome LIKE 'a%' AND nome LIKE '%a';

#Quem são os pokémons do tipo Fire que não são vermelhos? Apresente numero, nome, tipo1, tipo2 e cor, ordenados pelo nome de maneira crescente.

SELECT numero, nome, tipo1, tipo2, cor
FROM Pokemon
WHERE tipo1 = 'Fire' AND cor <> 'Red'
ORDER BY NOME ASC;


#####################################################

# 2. Exercícios de Funções Agregadas


# Quais são os valores máximo e mínimo das seguintes colunas:
# total
# hp
# ataque
# defesa
# ataque_especial
# defesa_especial
# velocidade
# taxa_captura

SELECT  MAX(total),MAX(ataque),MAX(defesa),MAX(ataque_especial),MAX(defesa_especial),MAX(velocidade),MAX(taxa_captura),MIN(total),MIN(ataque),MIN(defesa),MIN(ataque_especial),MIN(defesa_especial),MIN(velocidade),MIN(taxa_captura)
FROM `Pokemon`;

# Quantas cores diferentes possuem os pokémons?

SELECT COUNT(DISTINCT cor)
FROM `Pokemon`;

# Qual é o peso médio dos pokémons?

SELECT AVG(peso_kg)
FROM `Pokemon`;

# Qual é a soma das alturas dos pokémons?,

SELECT SUM(altura_m)
FROM `Pokemon`;

# Quantos pokémons estão cadastrados no banco de dados?

SELECT COUNT(*)
FROM `Pokemon`;

# Qual é o altura média dos pokémons?

SELECT AVG(altura_m)
FROM `Pokemon`;

# Qual é o desvio padrão do valor de HP dos pokémons?

SELECT STD(hp)
FROM `Pokemon`;

# Quantos pokémons possuem tipo2?

SELECT COUNT(DISTINCT tipo2)
FROM `Pokemon`;

# Quantos são os diferentes tipos primários dos pokémons?

SELECT COUNT(DISTINCT tipo1) AS tipoPrimario 
FROM `Pokemon`;

# Qual é a soma dos pesos dos pokémons?

SELECT SUM(peso_kg)
FROM `Pokemon`;

# Qual é a quantidade de Pokémons lendários e não lendários

SELECT SUM(lendario = 1), SUM(lendario = 0) 
FROM `Pokemon`
ORDER BY cor ASC;

# Qual é a quantidade de pokémons para cada uma das diferentes cores ordenadas decrescente?

SELECT DISTINCT cor, COUNT(cor) AS quantidade 
FROM `Pokemon`
GROUP BY cor DESC;

# Qual é a média de peso e altura de cada um dos tipos primários dos pokémons? Ordene os resultados decrescente respectivamente por média de peso e altura.

SELECT DISTINCT tipo1, AVG(peso_kg) AS peso, AVG(altura_m) AS altura 
FROM `Pokemon`
GROUP BY tipo1 
ORDER BY peso_kg DESC;

# Qual é a taxa de captura média por cor de cada um dos pokémons lendários?

SELECT DISTINCT cor, AVG(taxa_captura) 
FROM `Pokemon`
WHERE lendario = 1 
GROUP BY cor;

# Qual os tipos primários que possuem a taxa de captura média acima de 100

SELECT DISTINCT tipo1 
FROM `Pokemon`
WHERE taxa_captura > 100
ORDER BY tipo1 ASC;

# Agrupados por cor, quais pokémons não lendários possuem média total abaixo de 400

SELECT nome, cor, total 
FROM `Pokemon`
WHERE lendario = 0 AND total > 400 
ORDER BY total ASC;

# Qual o valor máximo total em cada uma das gerações?

SELECT DISTINCT geracao, SUM(total) 
FROM `Pokemon`
GROUP BY geracao 
ORDER BY geracao ASC;

# Quantos pokémons lendários existem em cada uma das gerações?

SELECT DISTINCT geracao, sum(lendario) 
FROM `Pokemon`
GROUP BY geracao;

# Em cada uma das gerações, quantos pokémons tem tipos primários e secundários e qual a taxa_captura média deles?

SELECT DISTINCT geracao, AVG(taxa_captura) 
FROM `Pokemon`
WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL 
GROUP BY geracao;

# Qual é a quantidade de cores de cada um dos pokémons lendários em todas as gerações?

SELECT DISTINCT lendario, COUNT(cor) 
FROM `Pokemon` 
GROUP BY lendario;

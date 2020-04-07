SELECT  MAX(total),MAX(ataque),MAX(defesa),MAX(ataque_especial),MAX(defesa_especial),MAX(velocidade),MAX(taxa_captura),MIN(total),MIN(ataque),MIN(defesa),MIN(ataque_especial),MIN(defesa_especial),MIN(velocidade),MIN(taxa_captura)
FROM `Pokemon`;

SELECT COUNT(DISTINCT cor)
FROM `Pokemon`;

SELECT AVG(peso_kg)
FROM `Pokemon`;

SELECT SUM(altura_m)
FROM `Pokemon`;

SELECT COUNT(*)
FROM `Pokemon`;

SELECT AVG(altura_m)
FROM `Pokemon`;

SELECT STD(hp)
FROM `Pokemon`;

SELECT COUNT(DISTINCT tipo2)
FROM `Pokemon`;

SELECT COUNT(DISTINCT tipo1) AS tipoPrimario 
FROM `Pokemon`;

SELECT SUM(peso_kg)
FROM `Pokemon`;

SELECT SUM(lendario = 1), SUM(lendario = 0) 
FROM `Pokemon`
ORDER BY cor ASC;

SELECT DISTINCT cor, COUNT(cor) AS quantidade 
FROM `Pokemon`
GROUP BY cor DESC;

SELECT DISTINCT tipo1, AVG(peso_kg) AS peso, AVG(altura_m) AS altura 
FROM `Pokemon`
GROUP BY tipo1 
ORDER BY peso_kg DESC;

SELECT DISTINCT cor, AVG(taxa_captura) 
FROM `Pokemon`
WHERE lendario = 1 
GROUP BY cor;

SELECT DISTINCT tipo1 
FROM `Pokemon`
WHERE taxa_captura > 100
ORDER BY tipo1 ASC;

SELECT nome, cor, total 
FROM `Pokemon`
WHERE lendario = 0 AND total > 400 
ORDER BY total ASC;

SELECT DISTINCT geracao, SUM(total) 
FROM `Pokemon`
GROUP BY geracao 
ORDER BY geracao ASC;

SELECT DISTINCT geracao, sum(lendario) 
FROM `Pokemon`
GROUP BY geracao;

SELECT DISTINCT geracao, AVG(taxa_captura) 
FROM `Pokemon`
WHERE tipo1 IS NOT NULL AND tipo2 IS NOT NULL 
GROUP BY geracao;

SELECT DISTINCT lendario, COUNT(cor) 
FROM `Pokemon` 
GROUP BY lendario;




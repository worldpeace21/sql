SELECT NAME, COUNT(NAME) AS CNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING CNT >= 2
ORDER BY NAME;
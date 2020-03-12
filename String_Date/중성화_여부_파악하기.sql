SELECT ANIMAL_ID, NAME,
    CASE
        WHEN SEX_UPON_INTAKE ='Neutered Male'
        THEN 'O'
        WHEN SEX_UPON_INTAKE ='Spayed Female'
        THEN 'O'
        ELSE 'X'
    END AS SEX_UPOPN_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID

--더 짧은 코드--
SELECT ANIMAL_ID, NAME, IF(SEX_UPON_INTAKE LIKE 'Intact%', 'X', 'O') AS SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
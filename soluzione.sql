-- es1
SELECT *
FROM `ospiti`
WHERE `document_type` = "CI";

-- es2
SELECT *
FROM `ospiti`
WHERE YEAR(`date_of_birth`) > "1988";

-- es3

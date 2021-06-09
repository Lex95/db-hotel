-- es1
SELECT *
FROM `ospiti`
WHERE `document_type` = "CI";

-- es2
SELECT *
FROM `ospiti`
WHERE YEAR(`date_of_birth`) > "1988";

-- es3
SELECT *
FROM `ospiti`
WHERE YEAR(CURRENT_DATE) - YEAR(`date_of_birth`) > "20";

-- es4
SELECT *
FROM `ospiti`
WHERE LEFT(`name`, 1) = "D";

-- es5
SELECT SUM(`price`)
FROM `pagamenti`
WHERE `status` = "accepted";

-- es6
SELECT MAX(`price`)
FROM `pagamenti`;

-- es7
SELECT *
FROM `ospiti`
WHERE `document_type` = "Driver License"
    AND YEAR(`date_of_birth`) = "1975";

-- es8
SELECT *
FROM `paganti`
WHERE `ospite_id` <> "NULL";

-- es9
SELECT SUM(`beds`)
FROM `stanze`;
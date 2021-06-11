-- es1
SELECT YEAR(`date_of_birth`) AS `Anno`, COUNT(`id`) AS `Ospiti totali`
FROM `ospiti`
GROUP BY `year`;

-- es2
SELECT `status`, SUM(`price`) AS `Totale`
FROM `pagamenti`
GROUP BY `status`;

-- es3
SELECT `stanza_id`, COUNT(`id`) AS `n° prenotazioni`
FROM `prenotazioni`
GROUP BY `stanza_id`;

-- es4
SELECT HOUR(`created_at`) AS `Ora`, COUNT(`id`) as `Prenotazioni`
FROM `prenotazioni`
GROUP BY `Ora`
ORDER BY `Prenotazioni` DESC;

-- es5
SELECT `ospite_id`, COUNT(*) AS `Prenotazioni`
FROM `prenotazioni_has_ospiti`
GROUP BY `ospite_id`
ORDER BY `Prenotazioni` DESC
LIMIT 1;
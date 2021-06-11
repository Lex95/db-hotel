-- es1
SELECT `name`, `lastname`, COUNT(`ospiti`.`id`) AS `numero prenotazioni`
FROM `ospiti`
INNER JOIN `prenotazioni_has_ospiti`
	ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`
GROUP BY `name`, `lastname` HAVING `numero prenotazioni` > 2;

-- es2
SELECT `prenotazioni_has_ospiti`.`prenotazione_id`, `ospiti`.*
FROM `ospiti`
INNER JOIN `prenotazioni_has_ospiti`
	ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`;

-- es3
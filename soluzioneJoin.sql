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
SELECT `pagamenti`.`prenotazione_id`, `paganti`.`name`, `paganti`.`lastname`, `pagamenti`.`price`
FROM `pagamenti`
INNER JOIN `paganti`
	ON `pagamenti`.`pagante_id` = `paganti`.`id`;

-- es4
SELECT SUM(`pagamenti`.`price`)
FROM `stanze`
LEFT JOIN `prenotazioni`
	ON `stanze`.`id` = `prenotazioni`.`stanza_id`
LEFT JOIN `pagamenti`
	ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
WHERE `stanze`.`floor` = 1;

-- es5
SELECT `paganti`.`address`
FROM `prenotazioni`
LEFT JOIN `pagamenti`
	ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
LEFT JOIN `paganti`
	ON `pagamenti`.`pagante_id` = `paganti`.`id`
WHERE `prenotazioni`.`id` = 7;

-- es6
SELECT `stanze`.*
FROM `stanze`
LEFT JOIN `prenotazioni`
	ON `stanze`.`id` = `prenotazioni`.`stanza_id`
WHERE `prenotazioni`.`id` IS NULL;
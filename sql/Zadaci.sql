-- Napisati upit koji ispisuje gradove ali sa redom sledecim informacijama: naziv drzave, naziv regije, naziv grada
SELECT
    co.`name` as country_name,
    s.`name` as state_name,
    c.`name` as city_name
FROM
    cities as c
JOIN
    states as s ON s.id = c.state_id
JOIN
    countries as co ON co.id = s.country_id;

-- Napisati upit koji ispipsuje gradove koji imaju populaciju milion ili vise, 
--sortiranim po populaciji opadajuce, sa sledecim informacijama: kratki kod zemlje, naziv zemlje, naziv grada, populacija
SELECT
    co.sortname as country_code,
    co.`name` as country_name,
    c.`name` as city_name,
    c.population as city_population
FROM
    cities as c
JOIN
    states as s ON s.id = c.state_id
JOIN
    countries as co ON co.id = s.country_id
WHERE
    c.population BETWEEN 1000000 AND 100000000
ORDER BY
    c.population DESC;
    

-- Napisati upit koji prikazuje gradove za koje nije uneta populacija (tj populacija je 0) sa kolonama: naziv drzave, naziv regije, naziv grada
SELECT
    co.`name` as country_name,
    s.`name` as state_name,
    c.`name` as city_name
FROM
    cities as c
JOIN
    states as s ON s.id = c.state_id
JOIN
    countries as co ON co.id = s.country_id
WHERE
    c.population = 0;


-- Napisati upit koji prikazuje broj gradova za koje nije uneta populaija
SELECT
    COUNT(c.id) as number_of_towns,
    c.population
FROM
    cities as c
WHERE
    c.population = 0;


-- Napisati upit koji prikazuje regije zajedno sa brojem stanovnika u regiji, 
        --polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji
SELECT
    co.`name` as country_name,
    s.`name` as state_name,
    SUM(c.population) as state_population
FROM
    states as s
JOIN
    cities as c ON s.id = c.state_id
JOIN
    countries as co ON co.id = s.country_id
GROUP BY
    s.id;

-- Napisati upit koji pronalazi 10 regija sa najvise stanovnika, 
    --polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji
SELECT
    co.`name` as county_name,
    s.`name` as state_name,
    SUM(c.population) as state_population
FROM
    states as s
JOIN
    cities as c ON s.id = c.state_id
JOIN
    countries as co ON co.id = s.country_id
GROUP BY
    s.id
ORDER BY
    state_population DESC
LIMIT 10 OFFSET 0;

-- Napisati upit koji pronalazi regija sa brojem stanovnika vecim od milion, polja koja se prikazuju su: naziv drzave, naziv regije, broj stanovnika u regiji

-- Napisati upit koji pronalazi 5 regija sa najvise registrovanih gradova, polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji

-- Napisati upit koji pronalazi regije sa nijednim unetim gradom (broj gradova je 0), polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji

-- Napisati upit koji pronalazi 5 regija sa najvise registrovanih gradova ciji naziv pocinje sa slovom 'r', polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji

-- Napisati upit koji pronalazi 5 regija sa najvise milionskih gradova (broje se gradovi sa populacijom vecom od milion), polja koja se prikazuju su: naziv drzave, naziv regije, broj gradova u regiji




-- Napisati upit koji pronalazi drzave koje imaju vise od 100 regija, polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj regija

-- Napisati upit koji pronalazi drzave koje imaju vise od 10 regija ciji naziv pocinje sa slovom 'a', polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj regija

-- Napisati upit koji prikazuje drzave zajedno sa njihovim brojem stanovnika, sortiranih po broju stanovnika opadajuce, polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj stanovnika

-- Napisati upit koji prolazi drzave koje imaju vise od milion stanovnika, polja koja se prikazuju su id drzave, kratki kod drzave, naziv drzave i broj stanovnika

-- Napisati upit koji prikazuje prvih 5 drzava sa najvise milionskih gradova

-- Kreirati tabelu groups sa poljima id i title i preneti njen primarni kljuc u tabelu categories pod nazivom group_id 

-- Napisati upit koji ispisuje proizvode zajedno sa kategorijom i grupom
SELECT
    p.id,  -- u REZULTUJUCOJ TABELI SE ISPISUJE po redosledu kako je navedeno u SELECT upitu                           
    p.title,
    c.title as category_title,
    g.title as group_title
FROM
    products as p
JOIN
    categories as c ON p.category_id = c.id
JOIN
    groups as g ON c.group_id = g.id;

-- Napisati upit koji ispisuje broj proizvoda u kategoriji
SELECT
    c.title as naziv_kategorije,
    COUNT(p.id) as proizvoda_u_kategoriji
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
GROUP BY
    c.id;


-- Napisati upit koji ispisuje broj proizvoda u grupi
SELECT
    g.title as grupa_proizvoda,
    COUNT(p.id) as broj_proizvoda
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
JOIN
    groups as g ON g.id = c.group_id
GROUP BY
    g.id;

-- Napisati upit koji ispisuje broj proizvoda u grupi za proizvode sa brand_id -jem 1
SELECT
    g.title as grupa_proizvoda,
    COUNT(p.id) as broj_proizvoda
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
JOIN
    groups as g ON g.id = c.group_id
WHERE
    p.brand_id = 1
GROUP BY
    g.id;

-- Napisati upit koji ispisuje broj proizvoda u grupi za proizvode ciji se brend zove 'Samsung'
SELECT
    g.title as grupa_proizvoda,
    COUNT(p.id) as broj_proizvoda
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
JOIN
    groups as g ON g.id = c.group_id
JOIN
    brands as b ON b.id = p.brand_id
WHERE
    b.title = 'Samsung'
GROUP BY
    g.id;

-- Napisati upit koji ispisuje broj proizvoda u grupi za proizvode ciji naslov pocinje sa 'a'
SELECT
    g.title as grupa_proizvoda,
    COUNT(p.id) as broj_proizvoda
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
JOIN
    groups as g ON g.id = c.group_id
WHERE
    p.title LIKE 'a%'
GROUP BY
    g.id;


-- Kreirati tabelu tags sa poljima id i title

-- Napisati upit koji ispisuje sve proivode koji su tagovani tagom sa id-jem recimo 3 (ili neki drugi tag)
SELECT
p.*  --SVI PROIZVODI iz tabele PRODUCTS
FROM
    products as p
JOIN
    product_tags as pt ON p.id = pt.product_id
WHERE
    pt.tag_id = 3;


-- Napisati upit koji ispisuje sve tag-ove proizvoda sa id-jem 16 (ili neki drugi id)
SELECT
t.*
FROM
    tags as t
JOIN
    product_tags as pt ON t.id = pt.tag_id
WHERE
    pt.product_id = 22;

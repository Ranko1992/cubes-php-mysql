-- Kreirati tabelu groups sa poljima id i title i preneti njen primarni kljuc u tabelu categories pod nazivom group_id 

-- Napisati upit koji ispisuje proizvode zajedno sa kategorijom i grupom
SELECT
    p.id,
    p.title,
    c.title,
    g.title
FROM
    products as p
JOIN
    categories as c ON c.id = p.category_id
JOIN
    groups as g ON g.id = c.group_id;

-- Napisati upit koji ispisuje broj proizvoda u kategoriji
SELECT
    c.title,
    COUNT(p.id)
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
    COUNT(p.id) as broj_proizvoda,
    b.title as naziv_brenda
FROM
    products as p
JOIN
    brands as b ON p.brand_id = b.id
JOIN
    categories as c ON p.category_id = c.id
JOIN
    groups as g ON c.group_id = g.id
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
    categories as c ON p.category_id = c.id
JOIN
    groups as g ON g.id = c.group_id
WHERE
    p.title LIKE 'a%'
GROUP BY
    g.id;

-- Kreirati tabelu tags sa poljima id i title

-- Napisati upit koji ispisuje sve proivode koji su tagovani tagom sa id-jem recimo 3 (ili neki drugi tag)
SELECT
    p.*
FROM
    products as p
JOIN
    product_tags as pt ON pt.product_id = p.id
WHERE
    pt.tag_id = 3;


-- Napisati upit koji ispisuje sve tag-ove proizvoda sa id-jem 22 (ili neki drugi id)
SELECT
    t*
FROM
    tags as t
JOIN
    product_tags as pt ON t.id = pt.tag_id
WHERE
    pt.product_id = 22;
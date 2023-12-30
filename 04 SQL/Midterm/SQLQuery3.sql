CREATE TABLE customers
(
customer_id DECIMAL(10,0) CONSTRAINT ctr_customer_id_pk PRIMARY KEY (customer_id),
last_name VARCHAR(25) NOT NULL,
first_name VARCHAR(25) NOT NULL,
home_phone VARCHAR(12),
address VARCHAR(100) NOT NULL,
city VARCHAR(30) NOT NULL,
state VARCHAR(2) NOT NULL,
email VARCHAR(25),
cell_phone VARCHAR(12),
);
DROP SEQUENCE customer_id
CREATE SEQUENCE customer_id
START WITH 101
INCREMENT BY 1;

SELECT * FROM customers;

INSERT INTO customers (customer_id, last_name, first_name, home_phone, address, city, state, email, cell_phone)
VALUES (NEXT VALUE FOR customer_id, 'Clark', 'Emily', '123-456-7890', '123 Main St', 'Buffalo', 'NY', 'clarke@ecc.edu', '716-555-1212'),
       (NEXT VALUE FOR customer_id, 'Bell', 'David', '234-567-8901', '123 Main St', 'Birmingham', 'AL', 'belldavid@ecc.edu', '504-589-2128'),
       (NEXT VALUE FOR customer_id, 'Allen', 'George', '345-678-9012', '123 Main St', 'Bridgeport', 'CT', 'georgeall@ecc.edu', '555-140-9872'),
       (NEXT VALUE FOR customer_id, 'Edwards', 'Thomas', '456-789-0123', '123 Main St', 'Jacksonville', 'FL', 'edwarsthom@ecc.edu', '352-753-8989'),
	   (NEXT VALUE FOR customer_id, 'Davis', 'Lily', '567-890-1123', '123 Main St', 'Indianapolis', 'IN', 'davisli@ecc.edu', '123-642-1076'),
       (NEXT VALUE FOR customer_id, 'Brown', 'Charlie', '678-901-8520', '123 Main St', 'Columbus', 'OH', 'brown@ecc.edu', '440-850-2190'),
       (NEXT VALUE FOR customer_id, 'Bennett', 'Linda', '987-777-1112', '123 Main St', 'Topeka', 'KS', 'bennettli@ecc.edu', '716-505-6755'),
       (NEXT VALUE FOR customer_id, 'Black', 'Daniel', '876-557-9024', '123 Main St', '	Montgomery', 'AL', 'blackd@ecc.edu', '555-260-7785'),
	   (NEXT VALUE FOR customer_id, 'Gardener', 'James', '765-456-8754', '123 Main St', 'Charleston', 'WV', 'jamesg@ecc.edu', '123-860-7893'),
       (NEXT VALUE FOR customer_id, 'Taylor', 'Alexander', '654-860-7153', '123 Main St', 'Cheyenne', 'WY', 'alexandertr@ecc.edu', '504-654-1212'),
       (NEXT VALUE FOR customer_id, 'Summers', 'Robert', '120-553-6755', '123 Main St', 'Buffalo', 'NY', 'roberts@ecc.edu', '352-852-5240'),
       (NEXT VALUE FOR customer_id, 'Rooney', 'Susan', '432-505-7785', '123 Main St', 'Wichita', 'KS', 'susanroo@ecc.edu', '440-231-7641'),
       (NEXT VALUE FOR customer_id, 'Morris', 'Harry', '321-450-1720', '123 Main St', 'Houston', 'TX', 'harryms@ecc.edu', '123-137-3961'),
	   (NEXT VALUE FOR customer_id, 'Hamilton', 'Michael', '210-546-6532', '123 Main St', 'Seattle', 'WA', 'michaelh@ecc.edu', '535-289-5014'),
       (NEXT VALUE FOR customer_id, 'Green', 'Victoria', '716-852-8501', '123 Main St', 'Columbia', 'SC', 'victoriagr@ecc.edu', '716-727-8780');

SELECT *
FROM customers





CREATE TABLE movies
(
title_id DECIMAL(10,0) CONSTRAINT mie_title_id_pk PRIMARY KEY (title_id),
title VARCHAR(60) NOT NULL,
description VARCHAR(400) NOT NULL,
rating VARCHAR(4),
category VARCHAR(20),
release_date DATE,
CONSTRAINT mie_rating_ck CHECK (rating IN ('G', 'PG', 'PG13', 'NC17', 'M', 'R')),
CONSTRAINT mie_category_ck CHECK (category IN ('DRAMA', 'COMEDY', 'ACTION', 'CHILD', 'SCIFI', 'DOCUMENTARY', 'ROMCOM', 'WESTERN')),
);
DROP SEQUENCE title_id
CREATE SEQUENCE title_id
       START WITH 1
       INCREMENT BY 1;

INSERT INTO movies (title_id, title, description, rating, category, release_date)
VALUES (NEXT VALUE FOR title_id, 'Remember the Titans', 'The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.', 'PG', 'DRAMA', '29-SEP-2000'),
       (NEXT VALUE FOR title_id, 'Forrest Gump', 'The history of the United States from the 1950s to the 70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.', 'PG', 'DRAMA', '06-JUL-1994'),
       (NEXT VALUE FOR title_id, 'Blade Runner', 'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.', 'NC17', 'ACTION', '25-JUN-1982'),
       (NEXT VALUE FOR title_id, 'Armageddon', 'After discovering that an asteroid the size of Texas will impact Earth in less than a month, NASA recruits a misfit team of deep-core drillers to save the planet.', 'M', 'ACTION', '01-JUL-1998'),
	   (NEXT VALUE FOR title_id, 'The Dark Knight', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'NC17', 'ACTION', '16-JUL-2008'),
       (NEXT VALUE FOR title_id, 'Donnie Darko', 'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.', 'PG13', 'SCIFI', '18-JAN-2001'),
       (NEXT VALUE FOR title_id, 'Braveheart', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.', 'PG13', 'DRAMA', '24-MAY-1995'),
       (NEXT VALUE FOR title_id, 'Mean Streets', 'A small-time hood tries to keep the peace between his friend Johnny and Johnnys creditors.', 'R', 'DRAMA', '02-OCT-1973'),
	   (NEXT VALUE FOR title_id, 'K-PAX', 'PROT is a patient at a mental hospital who claims to be from a faraway planet named K-PAX. His psychiatrist tries to help him, only to begin to doubt his own explanations.', 'PG13', 'SCIFI', '22-OCT-2001'),
       (NEXT VALUE FOR title_id, '28 Days Later', 'Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.', 'NC17', 'DRAMA', '31-OCT-2002'),
       (NEXT VALUE FOR title_id, 'The Fisher King', 'A former radio DJ, suicidally despondent because of a terrible mistake he made, finds redemption in helping a deranged homeless man who was an unwitting victim of that mistake.', 'R', 'COMEDY', '09-SEP-1991'),
       (NEXT VALUE FOR title_id, 'Lost in Translation', 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.', 'PG', 'COMEDY', '31-AUG-2003'),
       (NEXT VALUE FOR title_id, 'Jackie Brown', 'A flight attendant with a criminal past gets nabbed by the ATF for smuggling. Under pressure to become an informant against the drug dealer she works for, she must find a way to secure her future without getting killed.', 'M', 'DRAMA', '24-DEC-1997'),
	   (NEXT VALUE FOR title_id, 'Minority Report', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 'NC17', 'ACTION', '20-JUN-2002'),
       (NEXT VALUE FOR title_id, 'Hotel Rwanda', 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.', 'R', 'DRAMA', '11-SEP-2004');

SELECT *
FROM movies




CREATE TABLE media
(
media_id DECIMAL(10,0) CONSTRAINT mia_media_id_pk PRIMARY KEY (media_id),
format VARCHAR(3) NOT NULL,
title_id DECIMAL(10,0) NOT NULL,
CONSTRAINT mia_title_id_fk FOREIGN KEY(title_id) 
REFERENCES movies(title_id),
);
DROP SEQUENCE media_id
CREATE SEQUENCE media_id
       START WITH 92
       INCREMENT BY 1;

INSERT INTO media (media_id, format, title_id)
VALUES (NEXT VALUE FOR media_id, 'DVD', (SELECT title_id FROM movies WHERE title = 'Remember the Titans')),
       (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = 'Forrest Gump')),
	   (NEXT VALUE FOR media_id, 'DIG', (SELECT title_id FROM movies WHERE title = 'Blade Runner')),
	   (NEXT VALUE FOR media_id, 'DIG', (SELECT title_id FROM movies WHERE title = 'Armageddon')),
	   (NEXT VALUE FOR media_id, 'DVD', (SELECT title_id FROM movies WHERE title = 'The Dark Knight')),
	   (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = 'Donnie Darko')),
	   (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = 'Braveheart')),
	   (NEXT VALUE FOR media_id, 'DVD', (SELECT title_id FROM movies WHERE title = 'Mean Streets')),
	   (NEXT VALUE FOR media_id, 'DIG', (SELECT title_id FROM movies WHERE title = 'K-PAX')),
	   (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = '28 Days Later')),
	   (NEXT VALUE FOR media_id, 'DVD', (SELECT title_id FROM movies WHERE title = 'The Fisher King')),
	   (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = 'Lost in Translation')),
	   (NEXT VALUE FOR media_id, 'DIG', (SELECT title_id FROM movies WHERE title = 'Jackie Brown')),
	   (NEXT VALUE FOR media_id, 'DVD', (SELECT title_id FROM movies WHERE title = 'Minority Report')),
	   (NEXT VALUE FOR media_id, 'VHS', (SELECT title_id FROM movies WHERE title = 'Hotel Rwanda'));

INSERT INTO media (media_id, format, title_id)
VALUES (NEXT VALUE FOR media_id, 'DVD', NEXT VALUE FOR title_id),
       (NEXT VALUE FOR media_id, 'VHS', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DIG', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DVD', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DIG', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'VHS', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DVD', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'VHS', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DIG', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'BLU', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'BLU', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'VHS', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DVD', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'VHS', NEXT VALUE FOR title_id),
	   (NEXT VALUE FOR media_id, 'DVD', NEXT VALUE FOR title_id);

INSERT INTO media (media_id, format, title_id)	   
VALUES (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 2 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 3 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 4 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 5 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 6 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 7 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 8 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 9 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 10 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 11 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 12 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 13 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 14 title_id FROM movies)),
       (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 15 title_id FROM movies));

-- DVD formatýnda medya eklerken title_id seçimi
INSERT INTO media (media_id, format, title_id)
SELECT NEXT VALUE FOR media_id, 'DVD', title_id
FROM movies
WHERE title_id NOT IN (SELECT title_id FROM media)
ORDER BY NEWID()
OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY;

-- Blu-ray formatýnda medya eklerken title_id seçimi
INSERT INTO media (media_id, format, title_id)
SELECT NEXT VALUE FOR media_id, 'Blu', title_id
FROM movies
WHERE title_id NOT IN (SELECT title_id FROM media)
ORDER BY NEWID()
OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY;

-- VHS formatýnda medya eklerken title_id seçimi
INSERT INTO media (media_id, format, title_id)
SELECT NEXT VALUE FOR media_id, 'VHS', title_id
FROM movies
WHERE title_id NOT IN (SELECT title_id FROM media)
ORDER BY NEWID()
OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY;


INSERT INTO media (media_id, format, title_id)
SELECT NEXT VALUE FOR media_id, 'DVD', title_id
FROM movies
WHERE title_id NOT IN (SELECT title_id FROM media)
ORDER BY NEWID()
OFFSET 0 ROWS FETCH FIRST 1 ROW ONLY;






--INSERT INTO media (media_id, format, title_id)
--VALUES (NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'VHS', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'DIG', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
	   --(NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'VHS', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'DIG', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
	   --(NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'VHS', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'DIG', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
	   --(NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'VHS', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'DIG', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
	   --(NEXT VALUE FOR media_id, 'DVD', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'VHS', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID())),
       --(NEXT VALUE FOR media_id, 'DIG', (SELECT TOP 1 title_id FROM movies ORDER BY NEWID()));

SELECT *
FROM media





CREATE TABLE rental_history
(
media_id DECIMAL(10,0) NOT NULL,
rental_date DATE DEFAULT GETDATE() CONSTRAINT rth_rental_date_pk PRIMARY KEY (rental_date),
customer_id DECIMAL(10,0) NOT NULL,
return_date DATE,
CONSTRAINT rth_media_id_fk FOREIGN KEY(media_id) 
REFERENCES media(media_id),
CONSTRAINT rth_customer_id_fk FOREIGN KEY(customer_id) 
REFERENCES customers(customer_id)
);

INSERT INTO rental_history (customer_id, media_id, rental_date, return_date)
SELECT
    (SELECT TOP 1 customer_id FROM customers ORDER BY NEWID()) AS customer_id,
    (SELECT TOP 1 media_id FROM media ORDER BY NEWID()) AS media_id,
    GETDATE() AS rental_date,
    DATEADD(DAY, CAST(RAND() * 7 AS INT), DATEADD(DAY, 1, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)))) AS return_date
FROM
    master.dbo.spt_values as v1,
    master.dbo.spt_values as v2;

SELECT *
FROM rental_history





CREATE TABLE actors
(
actor_id DECIMAL(10,0) CONSTRAINT act_actor_id_pk PRIMARY KEY (actor_id),
stage_name VARCHAR(40),
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
birth_date DATE NOT NULL,
);

CREATE SEQUENCE actor_id
       START WITH 1001
       INCREMENT BY 1;

INSERT INTO actors (actor_id, stage_name, first_name, last_name, birth_date)
VALUES (NEXT VALUE FOR actor_id, 'Coach Herman Boone', 'Denzel', 'Washington', '28-DEC-1954'),
       (NEXT VALUE FOR actor_id, 'Forrest Gump', 'Tom', 'Hanks', '09-JUL-1956'),
       (NEXT VALUE FOR actor_id, 'Deckard', 'Harrison', 'Ford', '13-JUL-1942'),
       (NEXT VALUE FOR actor_id, 'Harry S. Stamper', 'Bruce', 'Willis', '19-MAR-1955'),
       (NEXT VALUE FOR actor_id, 'Joker', 'Heath', 'Ledger', '04-APR-1979'),
       (NEXT VALUE FOR actor_id, 'Eddie Darko', 'Holmes', 'Osborne', '07-NOV-1947'),
       (NEXT VALUE FOR actor_id, 'William Wallace', 'Mel', 'Gibson', '03-JAN-1956'),
       (NEXT VALUE FOR actor_id, 'Michael', 'Richard', 'Romanus', '08-FEB-1943'),
       (NEXT VALUE FOR actor_id, 'Prot', 'Kevin', 'Spacey', '26-JUL-1959'),
       (NEXT VALUE FOR actor_id, 'Jim', 'Cillian', 'Murphy', '25-MAY-1976'),
       (NEXT VALUE FOR actor_id, 'Jack', 'Jeff', 'Bridges', '04-DEC-1949'),
       (NEXT VALUE FOR actor_id, 'Bob Harris', 'Bill', 'Murray', '21-SEP-1950'),
       (NEXT VALUE FOR actor_id, 'Jackie Brown', 'Pam', 'Grier', '26-MAY-1949'),
       (NEXT VALUE FOR actor_id, 'Agatha', 'Samantha', 'Morton', '13-MAY-1977'),
       (NEXT VALUE FOR actor_id, 'Jack Daglish', 'Joaquin', 'Phoenix', '28-OCT-1974');

SELECT *
FROM actors





CREATE TABLE roles
(
actor_id DECIMAL(10,0) CONSTRAINT rls_actor_id_pk PRIMARY KEY (actor_id),
title_id DECIMAL(10,0) NOT NULL,
comments VARCHAR(40),
CONSTRAINT rls_actor_id_fk FOREIGN KEY(actor_id)
REFERENCES actors(actor_id),
CONSTRAINT rls_title_id_fk FOREIGN KEY(title_id) 
REFERENCES movies(title_id)
);

INSERT INTO roles (actor_id, title_id, comments)
VALUES 
    ((SELECT actor_id FROM actors WHERE stage_name = 'Coach Herman Boone'), 1001, 'Comment 1'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Forrest Gump'), 1002, 'Comment 2'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Deckard'), 1003, 'Comment 3'),
	((SELECT actor_id FROM actors WHERE stage_name = 'Coach Herman Boone'), 1001, 'Comment 1'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Forrest Gump'), 1002, 'Comment 2'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Deckard'), 1003, 'Comment 3'),
	((SELECT actor_id FROM actors WHERE stage_name = 'Coach Herman Boone'), 1001, 'Comment 1'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Forrest Gump'), 1002, 'Comment 2'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Deckard'), 1003, 'Comment 3'),
	((SELECT actor_id FROM actors WHERE stage_name = 'Coach Herman Boone'), 1001, 'Comment 1'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Forrest Gump'), 1002, 'Comment 2'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Deckard'), 1003, 'Comment 3'),
	((SELECT actor_id FROM actors WHERE stage_name = 'Coach Herman Boone'), 1001, 'Comment 1'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Forrest Gump'), 1002, 'Comment 2'),
    ((SELECT actor_id FROM actors WHERE stage_name = 'Deckard'), 1003, 'Comment 3');

SELECT *
FROM roles

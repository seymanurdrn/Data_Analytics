CREATE TABLE customers 
(
customer_id INT IDENTITY(101,1) CONSTRAINT ctr_customer_id_pk PRIMARY KEY (customer_id),
last_name VARCHAR(25) NOT NULL, 
first_name VARCHAR(25) NOT NULL, 
home_phone VARCHAR(12) NOT NULL, 
address VARCHAR(100) NOT NULL, 
city VARCHAR(30) NOT NULL, 
state VARCHAR(2) NOT NULL, 
email VARCHAR(25), 
cell_phone VARCHAR(12) 
);

INSERT INTO customers (last_name, first_name, home_phone, address, city, state, email, cell_phone)
VALUES ('Clark', 'Emily', '123-456-7890', '123 Main St', 'Buffalo', 'NY', 'clarke@ecc.edu', '716-555-1212'),
       ('Bell', 'David', '234-567-8901', '123 Main St', 'Birmingham', 'AL', 'belldavid@ecc.edu', '504-589-2128'),
       ('Allen', 'George', '345-678-9012', '123 Main St', 'Bridgeport', 'CT', 'georgeall@ecc.edu', '555-140-9872'),
       ('Edwards', 'Thomas', '456-789-0123', '123 Main St', 'Jacksonville', 'FL', 'edwarsthom@ecc.edu', '352-753-8989'),
	   ('Davis', 'Lily', '567-890-1123', '123 Main St', 'Indianapolis', 'IN', 'davisli@ecc.edu', '123-642-1076'),
       ('Brown', 'Charlie', '678-901-8520', '123 Main St', 'Columbus', 'OH', 'brown@ecc.edu', '440-850-2190'),
       ('Bennett', 'Linda', '987-777-1112', '123 Main St', 'Topeka', 'KS', 'bennettli@ecc.edu', '716-505-6755'),
       ('Black', 'Daniel', '876-557-9024', '123 Main St', '	Montgomery', 'AL', 'blackd@ecc.edu', '555-260-7785'),
	   ('Gardener', 'James', '765-456-8754', '123 Main St', 'Charleston', 'WV', 'jamesg@ecc.edu', '123-860-7893'),
       ('Taylor', 'Alexander', '654-860-7153', '123 Main St', 'Cheyenne', 'WY', 'alexandertr@ecc.edu', '504-654-1212');
      --'Summers', 'Robert', '120-553-6755', '123 Main St', 'Buffalo', 'NY', 'roberts@ecc.edu', '352-852-5240'),
      --'Rooney', 'Susan', '432-505-7785', '123 Main St', 'Wichita', 'KS', 'susanroo@ecc.edu', '440-231-7641'),
       --Morris', 'Harry', '321-450-1720', '123 Main St', 'Houston', 'TX', 'harryms@ecc.edu', '123-137-3961'),
	   --Hamilton', 'Michael', '210-546-6532', '123 Main St', 'Seattle', 'WA', 'michaelh@ecc.edu', '535-289-5014'),
       --Green', 'Victoria', '716-852-8501', '123 Main St', 'Columbia', 'SC', 'victoriagr@ecc.edu', '716-727-8780');

SELECT * 
FROM customers
ORDER BY customer_id DESC;





CREATE TABLE movies 
(
title_id INT IDENTITY(1,1) CONSTRAINT mie_title_id_pk PRIMARY KEY (title_id),
title VARCHAR(60) NOT NULL, 
description VARCHAR(400) NOT NULL, 
rating VARCHAR(4),
category VARCHAR(20),
release_date DATE,
CONSTRAINT mie_rating_ck CHECK (rating IN ('G', 'PG', 'PG13', 'NC17', 'M', 'R')),
CONSTRAINT mie_category_ck CHECK (category IN ('DRAMA', 'COMEDY', 'ACTION', 'CHILD', 'SCIFI', 'DOCUMENTARY', 'ROMCOM', 'WESTERN')),
);

INSERT INTO movies (title, description, rating, category, release_date)
VALUES ('Remember the Titans', 'The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.', 'PG', 'DRAMA', '29-SEP-2000'),
       ('Forrest Gump', 'The history of the United States from the 1950s to the 70s unfolds from the perspective of an Alabama man with an IQ of 75, who yearns to be reunited with his childhood sweetheart.', 'PG', 'DRAMA', '06-JUL-1994'),
       ('Blade Runner', 'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.', 'NC17', 'ACTION', '25-JUN-1982'),
       ('Armageddon', 'After discovering that an asteroid the size of Texas will impact Earth in less than a month, NASA recruits a misfit team of deep-core drillers to save the planet.', 'M', 'ACTION', '01-JUL-1998'),
	   ('The Dark Knight', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'NC17', 'ACTION', '16-JUL-2008'),
       ('Donnie Darko', 'After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.', 'PG13', 'SCIFI', '18-JAN-2001'),
       ('Braveheart', 'Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.', 'PG13', 'DRAMA', '24-MAY-1995'),
       ('Mean Streets', 'A small-time hood tries to keep the peace between his friend Johnny and Johnnys creditors.', 'R', 'DRAMA', '02-OCT-1973'),
	   ('K-PAX', 'PROT is a patient at a mental hospital who claims to be from a faraway planet named K-PAX. His psychiatrist tries to help him, only to begin to doubt his own explanations.', 'PG13', 'SCIFI', '22-OCT-2001'),
       ('28 Days Later', 'Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.', 'NC17', 'DRAMA', '31-OCT-2002'),
       ('The Fisher King', 'A former radio DJ, suicidally despondent because of a terrible mistake he made, finds redemption in helping a deranged homeless man who was an unwitting victim of that mistake.', 'R', 'COMEDY', '09-SEP-1991'),
       ('Lost in Translation', 'A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.', 'PG', 'COMEDY', '31-AUG-2003'),
       ('Jackie Brown', 'A flight attendant with a criminal past gets nabbed by the ATF for smuggling. Under pressure to become an informant against the drug dealer she works for, she must find a way to secure her future without getting killed.', 'M', 'DRAMA', '24-DEC-1997'),
	   ('Minority Report', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 'NC17', 'ACTION', '20-JUN-2002'),
       ('Hotel Rwanda', 'Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.', 'R', 'DRAMA', '11-SEP-2004');

SELECT * 
FROM movies
ORDER BY title_id DESC;





CREATE TABLE media 
(
media_id INT IDENTITY(92,1) CONSTRAINT mia_media_id_pk PRIMARY KEY (media_id), 
format VARCHAR(3) NOT NULL, 
title_id INT NOT NULL,
CONSTRAINT mia_title_id_fk FOREIGN KEY(title_id) 
REFERENCES movies(title_id),
);

INSERT INTO media (format, title_id)
VALUES ('DVD', 1),
       ('VHS', 2),
	   ('DIG', 3),
	   ('DIG', 4),
	   ('DVD', 5),
	   ('VHS', 6),
	   ('VHS', 7),
	   ('DVD', 8),
	   ('DIG', 9),
	   ('VHS', 10),
	   ('DVD', 11),
	   ('VHS', 12),
	   ('DIG', 13),
	   ('DVD', 14),
	   ('VHS', 15);

SELECT * 
FROM media
ORDER BY media_id DESC;





CREATE TABLE rental_history 
(
media_id INT NOT NULL,
rental_date DATE DEFAULT GETDATE() CONSTRAINT rth_rental_date_pk PRIMARY KEY (rental_date),
customer_id INT NOT NULL,
return_date DATE,
CONSTRAINT rth_media_id_fk FOREIGN KEY(media_id) 
REFERENCES media(media_id),
CONSTRAINT rth_customer_id_fk FOREIGN KEY(customer_id) 
REFERENCES customers(customer_id)
);

INSERT INTO rental_history (media_id, rental_date, customer_id, return_date) --hepsinde þu anki tarihi almasý primary key'e aykýrý olduðu için olmuyor.
VALUES (92, GETDATE(), 101, DATEADD(DAY, 2, GETDATE())),
       (93, GETDATE(), 102, DATEADD(DAY, 5, GETDATE())),
	   (94, GETDATE(), 103, DATEADD(DAY, 10, GETDATE())),
	   (95, GETDATE(), 104, NULL),
	   (96, GETDATE(), 105, DATEADD(DAY, 2, GETDATE())),
	   (97, GETDATE(), 106, DATEADD(DAY, 2, GETDATE())),
	   (98, GETDATE(), 107, NULL),
	   (99, GETDATE(), 108, DATEADD(DAY, 8, GETDATE())),
	   (100, GETDATE(), 109, DATEADD(DAY, 2, GETDATE())),
	   (101, GETDATE(), 110, DATEADD(DAY, 5, GETDATE())),
	   (102, GETDATE(), 108, NULL),
	   (103, GETDATE(), 103, DATEADD(DAY, 3, GETDATE())),
	   (104, GETDATE(), 101, NULL),
	   (105, GETDATE(), 106, DATEADD(DAY, 6, GETDATE())),
	   (106, GETDATE(), 105, DATEADD(DAY, 4, GETDATE()));
	   

SELECT * 
FROM rental_history
ORDER BY rental_date DESC;





CREATE TABLE actors 
(
actor_id INT IDENTITY(1001,1) CONSTRAINT act_actor_id_pk PRIMARY KEY (actor_id),
stage_name VARCHAR(40),
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
birth_date date NOT NULL
);

INSERT INTO actors (stage_name, first_name, last_name, birth_date)
VALUES ('Coach Herman Boone', 'Denzel', 'Washington', '28-DEC-1954'),
       ('Forrest Gump', 'Tom', 'Hanks', '09-JUL-1956'),
       ('Deckard', 'Harrison', 'Ford', '13-JUL-1942'),
       ('Harry S. Stamper', 'Bruce', 'Willis', '19-MAR-1955'),
       ('Joker', 'Heath', 'Ledger', '04-APR-1979'),
       ('Eddie Darko', 'Holmes', 'Osborne', '07-NOV-1947'),
       ('William Wallace', 'Mel', 'Gibson', '03-JAN-1956'),
       ('Michael', 'Richard', 'Romanus', '08-FEB-1943'),
       ('Prot', 'Kevin', 'Spacey', '26-JUL-1959'),
       ('Jim', 'Cillian', 'Murphy', '25-MAY-1976'),
       ('Jack', 'Jeff', 'Bridges', '04-DEC-1949'),
       ('Bob Harris', 'Bill', 'Murray', '21-SEP-1950'),
       ('Jackie Brown', 'Pam', 'Grier', '26-MAY-1949'),
       ('Agatha', 'Samantha', 'Morton', '13-MAY-1977'),
       ('Paul Rusesabagina', 'Don', 'Cheadle', '28-OCT-1974');

SELECT * 
FROM actors
ORDER BY actor_id DESC;





CREATE TABLE roles 
(
actor_id INT CONSTRAINT rls_actor_id_pk PRIMARY KEY (actor_id),
title_id INT NOT NULL,
comments VARCHAR(40),
CONSTRAINT rls_actor_id_fk FOREIGN KEY(actor_id)
REFERENCES actors(actor_id),
CONSTRAINT rls_title_id_fk FOREIGN KEY(title_id) 
REFERENCES movies(title_id)
); 

INSERT INTO roles (actor_id, title_id, comments)
VALUES (1001, 1, 'American Football Coach'),
       (1002, 2, 'He is an optimistic and pure character.'),
	   (1003, 3, 'Special Police'),
       (1004, 4, 'Team Leader'),
       (1005, 5, 'Chaotic and Psychopathic Character'),
       (1006, 6, 'Family Loving Father'),
	   (1007, 7, 'Scottish Leader'),
       (1008, 8, 'Guilty'),
       (1009, 9, 'Mysterious Mental Patient'),
	   (1010, 10, 'Character Trying to Survive'),
       (1011, 11, 'Radio Presenter'),
       (1012, 12, 'Middle Aged, Famous Actor'),
	   (1013, 13, 'She is a intelligent character.'),
       (1014, 14, 'She is a precog who can see the future'),
       (1015, 15, 'Hotel Manager');

SELECT *
FROM roles
ORDER BY actor_id DESC;



CREATE VIEW NOT_YET_RETURNED AS
SELECT mia.title_id, rh.media_id, return_date
FROM media mia
JOIN rental_history rh ON mia.media_id = rh.media_id
WHERE rh.return_date IS NULL;

SELECT * 
FROM NOT_YET_RETURNED;
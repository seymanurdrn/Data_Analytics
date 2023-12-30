VERİ EKLEME
INSERT INTO cars (sütun isimleri)
VALUES (SELECT NEXTVAL('..id'), ' ')


CREATE SEQUENCE cars_id her istenen sütun için toplamda 4 tane lazım 
SATRT 100
INCREMENT 1
MİNVALUE 101
OWNED BY cars.id;


sütunları oluşturduktan sonra parantezi kapamadan altına
CONSTRAINT make CHECK (make>1 yada make IN ('Toyota' 'Honda') bunlardan biri olmalı
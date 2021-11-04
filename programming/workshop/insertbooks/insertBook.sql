use publishing;
DELETE FROM PUBLISHING_SCHOOLBOOK where subject = 'sports'
DELETE FROM PUBLISHING_SPECIALISTBOOK where category = 'sports'
DELETE FROM PUBLISHING_BOOKS where isbn1 = 20;

--Anlegen eines einfachen Buches

INSERT INTO PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) values (20,11,12,13, 19.99, 'a very simple book');
select * from PUBLISHING_BOOKS where isbn1 = 20

-- Create a SchoolBook
-- INSERT INTO PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) values (20,11,12,14, 19.99, 'a very simple school book');

-- select id FROM PUBLISHING_BOOKS where title = 'a very simple school book'
-- INSERT INTO PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) VALUES ((select id FROM PUBLISHING_BOOKS where title = 'a very simple school book'), 'sports', 10)
-- DECLARE @generatedId int
-- select @generatedId = id FROM PUBLISHING_BOOKS where title = 'a very simple school book'
-- INSERT INTO PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) VALUES (@generatedId, 'sports', 10)

DECLARE @insertResult TABLE (generatedId numeric(19,0))
DECLARE @generatedId numeric(19,0)

INSERT INTO PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id INTO @insertResult(generatedId) values (20,11,12,14, 19.99, 'a very simple school book');
select @generatedId = generatedId from @insertResult
INSERT INTO PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) VALUES (@generatedId, 'sports', 10)

select * from PUBLISHING_BOOKS where isbn1 = 20
select * from PUBLISHING_SCHOOLBOOK

-- Create a SpecialistBook

INSERT INTO PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id INTO @insertResult(generatedId) values (20,11,12,15, 19.99, 'a very simple specialist book');
select @generatedId = generatedId from @insertResult
INSERT INTO PUBLISHING_SPECIALISTBOOK (id, category) VALUES (@generatedId, 'sports')

select * from PUBLISHING_BOOKS where isbn1 = 20
select * from PUBLISHING_SPECIALISTBOOK

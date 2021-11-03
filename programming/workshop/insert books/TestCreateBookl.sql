use publishing;
delete from PUBLISHING_SCHOOLBOOK where subject = 'ectoplasma'
delete from PUBLISHING_SPECIALISTBOOK where category = 'ectoplasma'
delete from PUBLISHING_BOOKS where isbn1 = 10

--EXEC CreateBook @isbn1=10, @isbn2=11, @isbn3=12, @isbn4=14, @price=19.99, @title='a book'
EXEC CreateBook @isbnString='10-111-112-14', @price=19.99, @title='a book'
select * from PUBLISHING_BOOKS where isbn1 = 10

EXEC CreateBook @isbnString='10-111-112-15', @price=19.99, @title='a specialist book', @category = 'ectoplasma'
select * from PUBLISHING_BOOKS where isbn1 = 10
select * from PUBLISHING_SPECIALISTBOOK

EXEC CreateBook @isbnString='10-111-112-16', @price=19.99, @title='a school book', @year = 10, @subject='ectoplasma'
select * from PUBLISHING_BOOKS where isbn1 = 10
select * from PUBLISHING_SCHOOLBOOK

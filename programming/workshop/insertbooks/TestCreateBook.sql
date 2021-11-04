use publishing
DELETE FROM PUBLISHING_SCHOOLBOOK where subject = 'sports'
DELETE FROM PUBLISHING_SPECIALISTBOOK where category = 'sports'
DELETE FROM PUBLISHING_BOOKS where isbn1 = 20

EXEC CreateBook @isbnString='20-11-12-14', @price=19.99,  @title='a simple sawitzki book'
EXEC CreateBook @isbnString='20-11-12-15', @price=19.99, @subject='sports', @year=10, @title='a simple sawitzki school book'
EXEC CreateBook @isbnString='20-11-12-16', @price=19.99, @category='sports', @title='a sophisticated sawitzki specialist book'

select * from PUBLISHING_BOOKS where isbn1 = 20
select * from PUBLISHING_SCHOOLBOOK
select * from PUBLISHING_SPECIALISTBOOK

-- Prozedur zeigt alle Bücher an, die einen Minimalpreis
CREATE PROCEDURE ShowBooksWithMinPrice @MinPrice FLOAT
AS 
select * from PUBLISHING_BOOKS as b where b.price > @MinPrice
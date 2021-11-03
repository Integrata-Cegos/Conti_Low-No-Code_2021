-- Prozedur zeigt alle Bücher an, die einen Minimalpreis
-- @Hugo ist der Minimalpreis
CREATE PROCEDURE ShowBooksByPriceRange @Hugo FLOAT, @MaxPrice FLOAT
AS 
select * from PUBLISHING_BOOKS as b where b.price > @Hugo and b.price < @MaxPrice
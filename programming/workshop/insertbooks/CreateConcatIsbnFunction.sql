CREATE FUNCTION ConcatIsbn (@isbn1 int, @isbn2 int, @isbn3 int, @isbn4 int) RETURNS varchar(20)
AS 
BEGIN
    DECLARE @isbn varchar(20)
    SET @isbn = CONCAT(@isbn1, '-', @isbn2, '-', @isbn3, '-', @isbn4)
    RETURN @isbn
END
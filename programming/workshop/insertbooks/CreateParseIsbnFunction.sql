CREATE FUNCTION ParseIsbn (@isbnString varchar(20)) RETURNS @isbn TABLE (id tinyint Identity(1,1), value int) -- Signatur einer Funktion: Name(Parameterliste) Return-Wert
AS 
BEGIN
-- Aktuell dürfen hier keine Deklarationen erfolgen
    INSERT INTO @isbn SELECT CONVERT(int, value) FROM STRING_SPLIT(@isbnString, '-')
    RETURN
END
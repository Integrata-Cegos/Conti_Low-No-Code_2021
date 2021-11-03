-- Parsen eines ISBN-Strings, Rückgabe einer Tabelle mit den 4 ISBN-Nummern
-- use publishing;
-- DROP FUNCTION ParseIsbn
CREATE FUNCTION  ParseIsbn (@isbnString varchar(20)) RETURNS @isbn table(id tinyint Identity(1,1), isbn int) as 
    BEGIN
        insert into @isbn select convert(int, value) from STRING_SPLIT(@isbnString, '-')
        RETURN 
    END

-- use publishing
CREATE PROCEDURE CreateBook @isbn1 int, @isbn2 int, @isbn3 int, @isbn4 int, @title varchar(200), @price float, @year int = 0, @subject varchar(20) = NULL, @category varchar(20) = NULL

AS 

BEGIN
    DECLARE @insertResult TABLE (generatedId numeric(19,0))
    DECLARE @generatedId numeric(19,0)

    INSERT INTO PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id INTO @insertResult(generatedId) VALUES (@isbn1, @isbn2, @isbn3, @isbn4, @price, @title);
    select @generatedId = generatedId from @insertResult
    IF @subject IS NOT NULL AND @year > 0
        BEGIN
            INSERT INTO PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) VALUES (@generatedId, @subject, @year)
        END    
    IF @category IS NOT NULL
        BEGIN
            INSERT INTO PUBLISHING_SPECIALISTBOOK (id, category) VALUES (@generatedId, @category)
        END    

END

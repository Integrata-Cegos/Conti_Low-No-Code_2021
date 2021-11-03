-- create a book or a schoolbook
-- DROP PROCEDURE CreateBook 

CREATE PROCEDURE CreateBook @isbnString varchar(20), @title varchar(20), @price float, @year int = NULL , @subject varchar(20) = NULL, @category varchar(20) = NULL
AS

BEGIN
    DECLARE @result table(id numeric(19,0))
    DECLARE @id numeric(19,0)
    DECLARE @isbn1 int, @isbn2 int, @isbn3 int, @isbn4 int
    select @isbn1 = isbn  from ParseIsbn(@isbnString)  where id = 1
    select @isbn2 = isbn  from ParseIsbn(@isbnString)  where id = 2
    select @isbn3 = isbn  from ParseIsbn(@isbnString)  where id = 3
    select @isbn4 = isbn  from ParseIsbn(@isbnString)  where id = 4
    insert into PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id into @result(id)  values(@isbn1, @isbn2, @isbn3, @isbn4, @price, @title)
    select @id = id from @result
    IF @subject IS NOT NULL
        BEGIN
            insert into PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) values(@id, @subject, @year)
        END    
    IF @category IS NOT NULL
        BEGIN
            insert into PUBLISHING_SPECIALISTBOOK (id, category) values(@id, @category)
        END
END

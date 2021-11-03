-- create a schoolbook
CREATE PROCEDURE CreateSchoolBook @isbn1 int , @isbn2 int, @isbn3 int, @isbn4 int, @title varchar(20), @price float, @year int, @subject varchar(20) 
AS

BEGIN
    DECLARE @result table(id numeric(19,0))
    DECLARE @id numeric(19,0)
    insert into PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id into @result(id)  values(@isbn1, @isbn2, @isbn3, @isbn4, @price, @title)
    select @id = id from @result
    insert into PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) values(@id, @subject, @year)
END
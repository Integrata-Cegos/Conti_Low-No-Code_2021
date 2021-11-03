use publishing;
-- clean up previous runs
delete from PUBLISHING_SCHOOLBOOK where subject = 'ectoplasma'
delete from PUBLISHING_BOOKS where isbn1 = 10

-- create a simple book
insert into PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) values(10, 11, 12, 13, 19.99, 'a very simple book')

-- create a school book
-- caution: id is generated, so we have to store it into an output variable of type table
DECLARE @result table(id numeric(19,0))
DECLARE @id numeric(19,0)

insert into PUBLISHING_BOOKS (isbn1, isbn2, isbn3, isbn4, price, title) OUTPUT INSERTED.id into @result(id)  values(10, 11, 12, 14, 19.99, 'a school book')
select @id = id from @result
insert into PUBLISHING_SCHOOLBOOK (id, subject, SCHOOL_YEAR) values(@id, 'ectoplasma', 10)

select * from PUBLISHING_BOOKS where id = @id
select * from PUBLISHING_SCHOOLBOOK
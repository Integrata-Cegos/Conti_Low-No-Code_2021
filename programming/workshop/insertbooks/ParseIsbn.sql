use publishing

DECLARE @isbnString varchar(20) = '10-111-112-15'
DECLARE @isbn TABLE (id tinyint Identity(1,1), value int)
INSERT INTO @isbn SELECT CONVERT(int, value) FROM STRING_SPLIT(@isbnString, '-')
select * from @isbn

select value from @isbn where id = 1
select value from @isbn where id = 2
select value from @isbn where id = 3
select value from @isbn where id = 4
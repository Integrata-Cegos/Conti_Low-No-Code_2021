use publishing
-- select * from ParseIsbn('10-111-112-113')

DECLARE @isbn1 int, @isbn2 int, @isbn3 int, @isbn4 int
select @isbn1 = isbn  from ParseIsbn('10-111-112-113')  where id = 1
select @isbn2 = isbn  from ParseIsbn('10-111-112-113')  where id = 2
select @isbn3 = isbn  from ParseIsbn('10-111-112-113')  where id = 3
select @isbn4 = isbn  from ParseIsbn('10-111-112-113')  where id = 4


use publishing
DECLARE @isbnString varchar(20) = '10-111-122-13'
DECLARE @isbn table (id tinyint Identity(1,1), value varchar(5))

insert into @isbn select convert(int, value) from STRING_SPLIT(@isbnString, '-')
select * from @isbn


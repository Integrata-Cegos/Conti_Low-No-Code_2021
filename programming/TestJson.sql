DECLARE @jsonObject NVARCHAR(MAX)

set @jsonObject = '{"lastname": "Meier", "firstname": "Fritz"}'

select * from OPENJSON(@jsonObject, '$') WITH (ln varchar(100) '$.lastname', fn varchar(100) '$.firstname')
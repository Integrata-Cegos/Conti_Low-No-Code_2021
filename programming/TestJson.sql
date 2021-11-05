DECLARE @jsonObject NVARCHAR(MAX)

set @jsonObject = '{"lastname": "Meier", "firstname": "Fritz"}'

select data.* from OPENJSON(@jsonObject, '$') WITH (lastname varchar(100) '$.lastname', firstname varchar(100) '$.firstname') as data
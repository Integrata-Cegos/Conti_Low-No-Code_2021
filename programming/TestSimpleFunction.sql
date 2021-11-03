use publishing
declare @result varchar(20)
exec @result=GetDirection @long = -1.0
print @result
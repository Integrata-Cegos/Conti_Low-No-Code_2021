use publishing
declare @isbn varchar(20)
exec @isbn = ConcatIsbn @isbn1 = 1, @isbn2 = 2, @isbn3=3 , @isbn4 = 4
print(@isbn)
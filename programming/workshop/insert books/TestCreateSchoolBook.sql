use publishing;
delete from PUBLISHING_SCHOOLBOOK where subject = 'ectoplasma'
delete from PUBLISHING_BOOKS where isbn1 = 10

EXEC CreateSchoolBook @isbn1=10, @isbn2=11, @isbn3=12, @isbn4=14, @price=19.99, @title='a school book', @subject = "ectoplasma", @year=10

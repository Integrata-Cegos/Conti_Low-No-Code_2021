/*use publishing
DECLARE @isbnString varchar(20)
DECLARE @authorString varchar(256)
DECLARE @title varchar(20)
select @isbnString = (CONCAT(isbn1,'-',isbn2,'-',isbn3,'-',isbn4)), @title=title from PUBLISHING_BOOKS where id = 1
select @authorString = (lastname + ' ' + givenNameString) from PUBLISHING_AUTHORS where authorId = 8
print @isbnString
print @authorString
*/
delete from PUBLISHING_BOOKS_AUTHOR where books_id=1 and authors_authorId = 8
insert into PUBLISHING_BOOKS_AUTHOR (books_id, authors_authorId) values (1,8)

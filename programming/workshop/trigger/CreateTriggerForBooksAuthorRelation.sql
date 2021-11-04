CREATE TRIGGER INSERT_INTO_PUBLISHING_BOOKS_AUTHORS_ISBN on PUBLISHING_BOOKS_AUTHOR FOR INSERT AS
BEGIN
    DECLARE @bookId int 
    DECLARE @authorId int 
    DECLARE @isbnString varchar(20)
    DECLARE @authorString varchar(256)
    DECLARE @title varchar(256)
    select @bookId = books_id from INSERTED
    select @authorId = authors_authorId from INSERTED
    select @isbnString = CONCAT(isbn1,'-',isbn2,'-',isbn3,'-',isbn4), @title=title from PUBLISHING_BOOKS where id = @bookId
    select @authorString = (lastname + ' ' + givenNameString) from PUBLISHING_AUTHORS where authorId = @authorId
    INSERT INTO PUBLISHING_BOOKS_WITH_AUTHORS (isbn, title, author) VALUES (@isbnString, @title, @authorString)
END

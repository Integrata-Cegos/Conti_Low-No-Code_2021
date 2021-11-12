CREATE TRIGGER INSERT_INTO_BOOKS_WITH_AUTHORS ON PUBLISHING_BOOKS_AUTHOR FOR DELETE AS

BEGIN
    DECLARE @bookId numeric(19,0)
    DECLARE @authorId numeric(19,0)
    DECLARE @isbnString varchar(20)
    DECLARE @title varchar(256)
    DECLARE @authorString varchar(256)


    SELECT @bookId = books_id, @authorId = authors_authorId FROM DELETED
    SELECT @isbnString = CONCAT(isbn1, '-', isbn2, '-', isbn3,  '-', isbn4), @title = title FROM PUBLISHING_BOOKS WHERE id = @bookId
    SELECT @authorString = (lastname + ' ' + givenNameString) FROM PUBLISHING_AUTHORS WHERE authorId = @authorId

    DELETE FROM PUBLISHING_BOOKS_WITH_AUTHORS  where isbn = @isbnString and title =  @title and author = @authorString

END
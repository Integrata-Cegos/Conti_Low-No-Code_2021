CREATE VIEW AUTHORS_FOR_PUBLISHER1  AS
    SELECT DISTINCT a.lastname FROM PUBLISHING_BOOKS b JOIN PUBLISHING_BOOKS_AUTHOR pba ON b.id = pba.books_id JOIN PUBLISHING_AUTHORS a ON pba.authors_authorId = a.authorId WHERE publisher_publisherId = (select p.publisherId from PUBLISHING_PUBLISHERS p WHERE p.publisherName = 'Publisher1')

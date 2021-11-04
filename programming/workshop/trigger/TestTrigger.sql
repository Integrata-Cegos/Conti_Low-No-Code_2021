use publishing
delete from PUBLISHING_BOOKS_AUTHOR where books_id = 1 and authors_authorId = 8
insert into PUBLISHING_BOOKS_AUTHOR (books_id, authors_authorId) values (1, 8)
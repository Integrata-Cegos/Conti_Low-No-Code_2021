drop table if exists PUBLISHING_BOOKS_WITH_AUTHORS
create table PUBLISHING_BOOKS_WITH_AUTHORS (isbn varchar(20), title varchar(256), author varchar(256))
create index PUBLISHING_BOOKS_WITH_AUTHORS_ISBN ON PUBLISHING_BOOKS_WITH_AUTHORS (isbn)
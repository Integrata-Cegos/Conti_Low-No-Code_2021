#simple count
SELECT COUNT(*) FROM PUBLISHING_BOOKS WHERE PRICE > 200;
#sums
SELECT SUM(b.PRICE) FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_PUBLISHERS as p ON b.publisher_publisherId = p.publisherId where p.publisherName='Publisher1';
SELECT SUM(b.PRICE) FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_BOOKS_AUTHOR as ba ON ba.books_id = b.id JOIN PUBLISHING_AUTHORS as a ON ba.authors_authorId=a.authorId  where a.lastname='AuthorLastname1';
#avg
SELECT AVG(b.PRICE) FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_PUBLISHERS as p ON b.publisher_publisherId = p.publisherId where p.publisherName='Publisher1';
SELECT AVG(b.PRICE) FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_BOOKS_AUTHOR as ba ON ba.books_id = b.id JOIN PUBLISHING_AUTHORS as a ON ba.authors_authorId=a.authorId  where a.lastname='AuthorLastname1';
#2 authors
SELECT ba.books_id FROM PUBLISHING_BOOKS_AUTHOR as ba GROUP BY ba.books_id;
#best sellers
SELECT COUNT(*) FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_BOOKS_STATISTICS as bs ON b.id = bs.id JOIN PUBLISHING_STATISTICS as s ON s.id = bs.BOOK_STATISTICS_ID WHERE s.sold > 25;
books and aggregated keywords, MYSQL
select r.TITLE, GROUP_CONCAT(r.keywords) from (SELECT b.*, k.KEYWORDS FROM PUBLISHING_BOOKS as b JOIN PUBLISHING_BOOK_KEYWORDS as k ON b.id = k.Book_id) r GROUP BY r.ID;
#Books having 3 authors
select b.id, b.title from PUBLISHING_BOOKS as b where b.id in(select r.books_id from (select ba.books_id, Count(*) as AUTHOR_COUNT from PUBLISHING_BOOKS_AUTHOR as ba GROUP BY ba.books_id) r where r.AUTHOR_COUNT = 3);
#insert 2 school and 1 specialist book
INSERT INTO `PUBLISHING_SCHOOLBOOK`(`subject`, `SCHOOL_YEAR`, `id`) VALUES ('physics',10,10);
INSERT INTO `PUBLISHING_SCHOOLBOOK`(`subject`, `SCHOOL_YEAR`, `id`) VALUES ('music',5,11);
INSERT INTO `PUBLISHING_SPECIALISTBOOK`(`category`, `id`) VALUES ('machine learning',12)
#schoolbooks
INSERT INTO `PUBLISHING_SPECIALISTBOOK`(`category`, `id`) VALUES ('machine learning',12)
#school and specialist
select b.*, school.SCHOOL_YEAR as YEAR, school.subject as SUBJECT, null as CATEGORY from PUBLISHING_BOOKS as b JOIN PUBLISHING_SCHOOLBOOK school ON b.id = school.id UNION select b.*, null as YEAR , null as SUBJECT, specialist.category as CATEGORY from PUBLISHING_BOOKS as b JOIN PUBLISHING_SPECIALISTBOOK specialist ON b.id = specialist.id;

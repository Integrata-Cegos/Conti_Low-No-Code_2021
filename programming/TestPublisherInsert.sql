use publishing
delete from PUBLISHING_PUBLISHERS where publisherId = 42
insert into PUBLISHING_PUBLISHERS (publisherId, publisherName, city, street) values (42, 'Springer', 'Berlin', 'Alexanderplatz')
select * from AUDIT_MESSAGES where message like 'Sawitzki:%'
--select * from AUDIT_MESSAGES